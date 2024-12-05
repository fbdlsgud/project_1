$(document).ready(function () {
    $('.tab-menu button:contains("QNA 관리")').click(function () {
        $.ajax({
            url: '/admin/getQnaList', // 서버 요청 URL
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                let content = '<h3>QNA 목록</h3><table border="1"><tr><th>번호</th><th>작성자</th><th>제목</th><th>내용</th><th>날짜</th></tr>';
                data.forEach(function (qna) {
                    content += `<tr>
                        <td>${qna.qseq}</td>
                        <td>${qna.writer1}</td>
                        <td>${qna.title}</td>
                        <td>${qna.content}</td>
                        <td>${new Date(qna.indate).toLocaleString('ko-KR', {
                        year: 'numeric',
                        month: '2-digit',
                        day: '2-digit',
                        hour: '2-digit',
                        minute: '2-digit',
                    })}</td>
                    </tr>`;
                });
                content += '</table>';
                $('#content').html(content); // 콘텐츠 영역 업데이트
            },
            error: function (xhr, status, error) {
                console.error('AJAX Error:', status, error);
                $('#content').html('<p>데이터를 불러오는 중 오류가 발생했습니다.</p>');
            }
        });
    });
});




$(document).ready(function () {
    $('.tab-menu button:contains("회원 관리")').click(function () {
        $.ajax({
            url: '/admin/getMemberList', // 서버 요청 URL
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                let content = '<h3>회원 목록</h3><table border="1"><tr><th>아이디</th><th>이름</th><th>비밀번호</th><th>전화번호</th><th>이메일</th><th>가입날짜</th></tr>';
                data.forEach(function (user) {
                    content += `<tr>
                        <td>${user.id}</td>
                        <td>${user.pwd}</td>
                        <td>${user.name}</td>
                        <td>${user.phone}</td>
                        <td>${user.email}</td>
                        <td>${new Date(user.indate).toLocaleString('ko-KR', {
                        year: 'numeric',
                        month: '2-digit',
                        day: '2-digit',
                        hour: '2-digit',
                        minute: '2-digit',
                    })}</td>
                    </tr>`;
                });
                content += '</table>';
                $('#content').html(content); // 콘텐츠 영역 업데이트
            },
            error: function (xhr, status, error) {
                console.error('AJAX Error:', status, error);
                $('#content').html('<p>데이터를 불러오는 중 오류가 발생했습니다.</p>');
            }
        });
    });
});


$(document).ready(function () {
    $('.tab-menu button:contains("사업자 관리")').click(function () {
        $.ajax({
            url: '/admin/getBusinessManList', // 서버 요청 URL
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                let content = '<h3>사업자 회원 목록</h3><table border="1"><tr><th>아이디</th><th>비밀번호</th><th>전화번호</th><th>이름</th><th>이메일</th></tr>';
                data.forEach(function (businessman) {
                    content += `<tr>
                        <td>${businessman.id}</td>
                        <td>${businessman.pwd}</td>
                        <td>${businessman.phone}</td>
                        <td>${businessman.name}</td>
                        <td>${businessman.email}</td>
                    </tr>`;
                });
                content += '</table>';
                $('#content').html(content); // 콘텐츠 영역 업데이트
            },
            error: function (xhr, status, error) {
                console.error('AJAX Error:', status, error);
                $('#content').html('<p>데이터를 불러오는 중 오류가 발생했습니다.</p>');
            }
        });
    });
});


$(document).ready(function () {
    $('.tab-menu button:contains("공지사항 관리")').click(function () {
        $.ajax({
            url: '/admin/getNoticeList', // 서버 요청 URL
            type: 'GET',
            dataType: 'json',
            success: function (data) {
                let content = '<h3> 공지사항 목록</h3><table border="1"><tr><th>번호</th><th>제목</th><th>내용</th><th>업로드 날짜</th></tr>';
                data.forEach(function (notice) {
                    content += `<tr>
                        <td>${notice.nseq}</td>
                        <td>${notice.title}</td>
                        <td>${notice.content}</td>
                        <td>${new Date(notice.indate).toLocaleString('ko-KR', {
                        year: 'numeric',
                        month: '2-digit',
                        day: '2-digit',
                        hour: '2-digit',
                        minute: '2-digit',
                    })}</td>
                    </tr>`;
                });
                content += '</table>';
                $('#content').html(content); // 콘텐츠 영역 업데이트
            },
            error: function (xhr, status, error) {
                console.error('AJAX Error:', status, error);
                $('#content').html('<p>데이터를 불러오는 중 오류가 발생했습니다.</p>');
            }
        });
    });
});



