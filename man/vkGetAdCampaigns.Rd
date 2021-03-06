\name{vkGetAdCampaigns}
\alias{vkGetAdCampaigns}
\title{���������� ������ ��������� ��������}
\description{������� vkGetAdCampaigns ���������� ������ �������� ��������� �������� �� ���������� �������� ���������.}
\usage{
vkGetAdCampaigns(account_id = NULL, client_id = NULL, include_deleted = TRUE, campaign_ids = "null", access_token = NULL)
}
\arguments{
  \item{account_id}{������������� ���������� ��������, ������ ���� ��������� ��������� ��������� ����� �������� � ������ ������� vkGetAdAccounts.}
  \item{client_id}{������������� �������, � �������� ������������� ��������� ����������. �������� � ����������� ��� ��������� ��������.}
  \item{include_deleted}{���������� TRUE ��� FALSE, ����, �������� ������������� ������ �������� ����������.}
  \item{campaign_ids}{�������� ������, ������ �� ��������� ���������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\author{
Alexey Seleznev
}
\value{���� ����� �� ������� ��������� ��������� � �� ���������� �� ���������� ����������:
\item{1. id}{������������� ��������.}
\item{2. type}{��� ��������.}
\item{3. name}{�������� ��������.}
\item{4. status}{������ ��������. }
\item{5. day_limit}{������� ����� �������� � ������. }
\item{6. all_limit}{����� ����� �������� � ������. }
\item{7. start_time}{����� ������� ��������. }
\item{8. stop_time}{����� ��������� ��������. }
\item{9. create_time}{����� �������� ��������. }
\item{10. update_time}{����� ���������� ��������� ��������. }
}
\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1,app_secret = "H2Pk8htyFD8024mZaPHm")

##������ ������ ��������� ��������
my_vk_camp <- vkGetAdCampaigns(account_id = 1, 
                               access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
