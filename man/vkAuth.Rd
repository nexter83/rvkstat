\name{vkAuth}
\alias{vkAuth}
\title{����������� � ���������}
\description{������� vkAuth ��� ����������� �������� ����� ��� ������� � API ��������� ����� Authorization Code Flow - https://vk.com/dev/authcode_flow_user}
\usage{
vkAuth(client_id = NULL, client_secret = NULL, apiVersion = "5.68")
}
\arguments{
  \item{client_id}{ID ����������, ����� ��� ����� �� �������� ��������� ����������.}
  \item{client_secret}{���������� ���� ����������, ����� ��� ����� �� �������� ��������� ����������.}
  \item{apiVersion}{������ API.}
}
\value{������ ������� ������ ��� ������ � API ���������}
\author{
Alexey Seleznev
}

\examples{
##Auth in VK
my_tok <- vkAuth(client_id = 1,client_secret = "H2Pk8htyFD8024mZaPHm")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.