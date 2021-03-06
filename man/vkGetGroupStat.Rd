\name{vkGetGroupStat}
\alias{vkGetGroupStat}
\title{���������� �� ��������� ���������� � ���������.}
\description{������� vkGetGroupStat ��� �������������� ��������� ������ �� ��������� ��������� �� ���������� ����������, ��������, ������� � ����������� ���������� � ������� ���.}
\usage{
vkGetGroupStat(date_from = Sys.Date(), date_to = Sys.Date(), group_id = NULL, access_token = NULL)
}
\arguments{
  \item{date_from}{��������� ���� ��������� ���������� � ������� YYYY-MM-DD.}
  \item{date_to}{�������� ���� ��������� ���������� � ������� YYYY-MM-DD.}
  \item{group_id}{������������� ����������.}
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ����������� ���������� �� ���������� ����������:
\item{1. day}{���� �� ������� ��������� ����������.}
\item{2. views}{���������� ����������.}
\item{3. visitors}{���������� ���������� �����������.}
\item{4. total_reach}{������ �����. }
\item{5. subscribers_reach}{����� �����������.}
\item{6. subscribed}{����� ����� �����������.}
\item{7. unsubscribed}{����� ������������. }
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1,app_secret = "H2Pk8htyFD8024mZaPHm")

##��������� ���������� ����������
communityData <- vkGetGroupStat(date_from = "2016-01-01",
                               date_to = "2016-04-01",
                               group_id = 1,
                               access_token = my_tok$access_token)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
