
$( function () {
    //첫번째 배너
    $( "#image_list_1" ).jQBanner( {//롤링을 할 영역의 ID 값
        nWidth: 1290,				//영역의 width
        nHeight: 400,				//영역의 height
        nCount: 5,					//돌아갈 이미지 개수
        isActType: "up",			//움직일 방향 (left, right, up, down)
        nOrderNo: 1,				//초기 이미지
        nDelay: 3000				//롤링 시간 타임 (1000 = 1초)
    } );
    //두번째 배너
    $( "#image_list_2" ).jQBanner( {
        nWidth: 1295,
        nHeight: 400,
        nCount: 5,
        isActType: "left",
        nOrderNo: 1,
        isStartAct: "N",
        isStartDelay: "Y",
        nDelay: 3000,
        isBtnType: "li"             //레이블(버튼 타입)
    } );
    //세번째 배너
    $( "#image_list_3" ).jQBanner( {
        nWidth: 1300,
        nHeight: 250,
        nCount: 5,
        isActType: "right",
        nOrderNo: 1,
        isStartAct: "N",
        isStartDelay: "Y",
        nDelay: 3000,
        isBtnType: "img"
    } );
} );