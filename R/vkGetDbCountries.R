vkGetDbCountries <- function(need_all = TRUE,
                             code = NULL,
                             access_token = NULL){

  if(is.null(access_token)){
    stop("�� �������� access_token, ���� �������� �������� ������������.")
  }
  
  #������ �� ������� ����������
  if(!(is.null(code))){
  code <- paste0(code, collapse = ",")
  }
  
  if(need_all == TRUE){
    need_all <- 1
  } else {
    need_all <- 0
  }
  
  #�������������� ���� �����
  result  <- data.frame()
  
  
  #������������ ��������
  offset <- 0
  count <- 1000
  

  #��������� ������
  query <- paste0("https://api.vk.com/method/database.getCountries?need_all=",need_all,ifelse(!(is.null(code)),paste0("&code=",code),""),"&offset=",offset,"&count=",count,"&access_token=",access_token)
  answer <- GET(query)
  stop_for_status(answer)
  dataRaw <- content(answer, "parsed", "application/json")
  
  #�������� ������ �� ������
  if(!is.null(dataRaw$error)){
    stop(paste0("Error ", dataRaw$error$error_code," - ", dataRaw$error$error_msg))
  }
  
  #������� ����������
  for(i in 1:length(dataRaw$response)){
    result  <- rbind(result,
                     data.frame(cid                  = ifelse(is.null(dataRaw$response[[i]]$cid), NA,dataRaw$response[[i]]$cid),
                                title                = ifelse(is.null(dataRaw$response[[i]]$title), NA,dataRaw$response[[i]]$title),
                                stringsAsFactors = F))}
  
  return(result)
}
  