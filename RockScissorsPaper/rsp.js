let imageCoordinate = '0';
const dictionary = { // 딕셔너리 자료구조
    바위: '0',
    가위: '-135px',
    보: '-284px'
};

function computerPick(imageCoordinate) {
    return Object.entries(dictionary).find(function(v) {
        return v[1] === imageCoordinate;
    })[0];
}

let interval;

function intervalMaker() {
    interval = setInterval(function() {
        if (imageCoordinate === dictionary.바위) {
            imageCoordinate = dictionary.가위
        } else if (imageCoordinate === dictionary.가위) {
            imageCoordinate = dictionary.보;
        } else {
            imageCoordinate = dictionary.바위;
        }
        document.querySelector("#computer").style.background =
            'url(https://en.pimg.jp/023/182/267/1/23182267.jpg) ' + imageCoordinate + ' 0';
    }, 100); 
}

intervalMaker();

const score = {
    가위: 1,
    바위: 0,
    보: -1
};

document.querySelectorAll('.btn').forEach(function(btn) {
    btn.addEventListener('click', function() {
        clearInterval(interval);
        intervalMaker();
        const myPick = this.textContent;
        const myScore = score[myPick];
        const computerScore = score[computerPick(imageCoordinate)];
        const scoreGap = myScore - computerScore;
        if (scoreGap === 0) {
            alert('아쉽게 무승부입니다. 다시 한 번 해보세요.');
        } else if ([-1, 2].includes(scoreGap)) {
            alert('승리를 축하드립니다. 이벤트 쿠폰 페이지로 연결됩니다.');
            location.href="event.jsp";
        } else {
            alert('아쉽게 졌습니다. 다시 한 번 해보세요.');
        }
    });
});