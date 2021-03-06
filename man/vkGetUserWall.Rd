\name{vkGetUserWall}
\alias{vkGetUserWall}
\title{������ ��������� ���������.}
\description{������� vkGetUserWall ���������� ������ ��������� ���������� ������������.}
\usage{
vkGetUserWall(user_id = NULL, domain = NULL, filter = NULL, access_token = NULL)
}
\arguments{
  \item{user_id}{������������� ������������, ��� �������� ���������� �������� ������ ������. ���� �������� �� �����, �� ���������, ��� �� ����� �������������� �������� ������������.}
  \item{domain}{�������� ����� ������������ ��� ����������.}
  \item{filter}{����������, ����� ���� ������� �� ����� ���������� ��������. ��������� ��������: suggests � ������������ ������ �� ����� ���������� , postponed � ���������� ������ , owner � ������ ��������� �����, others � ������ �� �� ��������� �����, all � ��� ������ �� ����� (owner + others), �� ���������: all. }
  \item{access_token}{����� ������� � API, ���������� � ������� ������� vkAuth ��� vkGetToken}
}
\value{���� ����� �� ���������� ����������:
\item{1. id}{������������� ������.}
\item{2. from_id}{������������� ������ ������.}
\item{3. to_id}{������������� ��������� �����, �� ������� ��������� ������.}
\item{4. date}{����� ���������� ������}
\item{5. post_type}{��� ������, ����� ��������� ��������� ��������: post, copy, reply, postpone, suggest.}
\item{6. text}{����� ������.}
\item{7. can_delete}{���������� � ���, ����� �� ������� ������������ ������� ������ (1 � �����, 0 � �� �����).}
\item{8. comments_count}{���������� ������������.}
\item{9. likes_count}{ ����� �������������, ������� ����������� ������.}
\item{10. reposts_count}{����� �������������, ������������� ������.}
\item{11. attachment_type}{��� ������������� ������ (����������, ������ � �.�.)}
}
\author{
Alexey Seleznev
}

\examples{
##����������� � ��
my_tok <- vkAuth(app_id = 1, app_secret = "H2Pk8htyFD8024mZaPHm")

##�������� �������� ��������� �� ����� ������������ ���������.
my_vk_wall <- vkGetUserWall(user_id = 7437995,
                            access_token = my_tok$access_token)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
