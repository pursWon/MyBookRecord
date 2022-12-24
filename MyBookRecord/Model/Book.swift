import Foundation
import UIKit

struct Book {
    var title: String?
    var author: String?
    var coverImage: UIImage?
    var introduction: String?
    
    static var BookData: [Book] = [
        Book(title: "1 크리스마스 타일", author: "김금희", coverImage: UIImage(named: "크리스마스-타일"), introduction: "수많은 독자에게 사랑받는 작가 김금희가 데뷔 13년 만에 첫번째 연작소설을 선보인다.크리스마스를 배경으로, 먹고 사랑하고 이별하고 노동하는 사람들의 이야기를 일곱편의 소설 속에 담아냈다. 조금씩 연결되어 있는 인물들의 각기 다른 크리스마스 이야기를 담은 이 연작소설에는 쿠바에서 보낸 크리스마스에 작은 기적을 만난 방송작가 은하, 사랑에 대해 함께 이야기한 밤들이 모두 특별했음을 깨달은 영화학도 한가을, 크리스마스이브에 중국에서 사과를 주고받는다는 걸 처음 알려준 중국어 선생님 예후이, 아홉살의 크리스마스에 처음 만난 남자애와 스무살까지 이어온 인연을 떠올리는 진희,맛집 사진만 보고 상호를 맞힌다는 인플루언서 현우와 그를 촬영하는 MTN 방송국의 피디 지민 등 다채로운 인물들이 그려내는 따스한 크리스마스의 풍경으로 가득하다."),
        
        Book(title: "2 불편한 편의점2", author: "김호연", coverImage: UIImage(named: "불편한-편의점2"),
             introduction: "서울역 노숙인이 편의점의 야간 알바로 일하면서 시작되는 1편의 이야기는 예측불허의 웃음과 따스한 온기로 잔잔한 감동을 선사했다. 『불편한 편의점 2』는 전편의 위트와 속 깊은 시선을 이어가며 더욱 진득한 이야기로 독자를 끌어당긴다. 소설은 1편의 시간으로부터 1년 반이 흐른 여름날의 편의점을 스케치하며 시작된다. 그동안 세상도 달라지고 청파동의 ALWAYS편의점도 이모저모 바뀌었다. 숨이 턱턱 막히는 더위에도 마스크를 써야 하는 도입부의 묘사는 소설 속 현실에도 코로나가 있음을 짐작게 한다.아들과의 불화로 답답해하던 선숙은 점장이 되었고, 편의점을 팔자고 조르던 염 여사의 말썽꾼 아들 민식은 사장이 되어 있다. 말이 사장이지, 민식은 경영에는 관심이 없고 수익 운운하며 주휴수당 같은 비용 줄이기에만 열을 올리니, 여러모로 ‘진짜로 불편해진’ 편의점이 아닐 수 없는데…….그러던 중 독고의 후임으로 밤 시간을 책임지던 곽 씨가 그만두고 새 야간 알바를 구하면서 편의점은 다시 한 번 변화를 맞이한다."),
        
        Book(title: "3 너무 잘하려고 애쓰지 마라", author: "나태주", coverImage: UIImage(named: "너무-잘하려고-애쓰지-마라"), introduction: "작고 사소해 보이는 주변의 모든 존재를 애정 가득한 눈으로 시에 담아온 풀꽃 시인 나태주의 신작시집. 힘든 시간을 지나 다시 반짝이는 오늘 앞에 선 우리에게 위로와 응원의 인사를 건네는 신작시 176편은 2020년 2월부터 2022년 2월까지 하루에 한 편, 또는 일주일에 한 편씩 눈앞에서 독자들을 만나는 마음으로 꾹꾹 눌러쓴 시들이다. 난데없이 닥쳐온 코로나19로 인해 “너나없이 고달픈” 시간을 보내는 때, “하루하루 피차의 안식과 평화, 자그만 행복을” 빌며 미처 전하지 못한 마음들을 담아 매일 써 내려간 시들이다. “소망의 끈을 놓지 않”고 내일을 기다릴 수 있기를, 분명하게 빛나는 희망들이 이 시집에 고스란히 담겨 있다."),
        
        Book(title: "4 이토록 평범한 미래", author: "김연수", coverImage: UIImage(named: "이토록-평범한-미래" ), introduction: " 안팎으로 변화를 추동하는 일들이 계속되는 상황에서 김연수는 소설 외의 다른 글쓰기에 몰두하며 그 시간을 신중하게 지나왔다. 변화에 대한 내적인 욕구와 외적인 요구는 작가를 어떤 자리로 옮겨오게 했을까. <이토록 평범한 미래>는 작가가 최근 2~3년간 집중적으로 단편 작업에 매진한 끝에 선보이는 소설집으로, ‘시간’을 인식하는 김연수의 변화된 시각을 확인할 수 있게 한다. 김연수는 과거에서 미래를 향해 흐르는 것으로만 여겨지는 시간을 다르게 정의함으로써 우리가 현재의 시간을, 즉 삶을 새롭게 상상할 수 있는 가능성을 아름답고 서정적인 언어로 설득해낸다. 특별한 점은 그 가능성이 ‘이야기’의 형태로 전달된다는 것이다."),
        
        Book(title: "5 세상의 마지막 기차역" , author: "무라세 다케시", coverImage: UIImage(named: "세상의-마지막-기차역"), introduction: " 이 시작되는 3월, 급행열차 한 대가 탈선해 절벽 아래로 떨어졌다. 수많은 중상자를 낸 이 대형 사고 때문에 유가족은 순식간에 사랑하는 가족, 연인을 잃었다. 그렇게 두 달이 흘렀을까. 사람들 사이에서 이상한 소문이 돌기 시작하는데…. 역에서 가장 가까운 역인 ‘니시유이가하마 역’에 가면 유령이 나타나 사고가 일어난 그날의 열차에 오르도록 도와준다는 것. 단 유령이 제시한 네 가지 규칙을 반드시 지켜야만 한다. 그렇지 않으면 자신도 죽게 된다. 이를 알고도 유가족은 한 치의 망설임도 없이 역으로 향한다. 과연 유령 열차가 완전히 하늘로 올라가 사라지기 전, 사람들은 무사히 열차에 올라 사랑하는 이의 마지막을 함께할 수 있을까. 틱톡에 소개되어 일본 독자들 사이에서 크게 입소문이 난 화제작.현실과 판타지를 넘나들며 단숨에 독자를 이야기의 세계로 빠져들게 하는 무라세 다케시의 소설로, 작가의 여러 작품 중 한국에 처음 소개되는 작품이다. 작가가 쓴 작품 중 단연코 손꼽히는 판타지 휴머니즘 소설."),
        
        Book(title: "6 한계선을 넘다", author: "크래프톤", coverImage: UIImage(named: "한계선을-넘다"), introduction: " 현재 대만과 러시아에서 번역 출판되었으며, 지난 10월 개최된 2022년 프랑크푸르트 도서전에서 핫리스트에 올라 영미권을 포함하여 독일, 스페인, 네덜란드, 브라질, 폴란드, 우크라이나 등 전 세계 출판사가 현재 뜨거운 판권 경쟁을 진행중인 화제작이다. 이번에 출간된 <한계선을 넘다>는 「스타워즈」, 「반지의 제왕」, 「해리포터」 등 할리우드의 메이저 영화를 전담한 세계적인 컨셉 아티스트 이안 맥케이그를 포함한 17명의 아티스트가 <눈물을 마시는 새>의 소설 속 텍스트를 비주얼로 완성해 낸 아트북이다. 소설 속 각 캐릭터와 세계관, 여러 사건 등을 담아낸 300여 점의 일러스트와 이를 구현하기 위한 논의 과정 등이 300여 페이지의 분량에 상세한 텍스트로 담겨 있다. 원저작자인 이영도 작가는 <한계선을 넘다>의 텍스트를 읽고 '흥미로운 상상이 꽤 재미있다'고 평가하기도 하였다."),
        
        Book(title: "7 아주 작은 습관의 힘", author: "제임스 클리어", coverImage: UIImage(named: "아주-작은-습관의-힘"), introduction: "작년 말 미국에서 출간되어 현재까지 아마존 베스트 상위권에 머물고 있는 또 하나의 주목할 만한 습관 관련서다. 제목으로 짐작하건대 아마도 작은 습관들을 모아 큰 변화를 만들어 내자는 책일 것이다. 그런데 문득, 책의 원제(Atomic Habits)에 굳이 '원자'라는 단어를 쓴 이유가 궁금해진다. 행동과 목표를 원자처럼 작게, 더 이상 쪼갤 수 없을 정도로 세세히 나눠 보자는 의미가 아닐까. 그렇다면 행동이나 목표를 잘게 쪼개는 것은 우리에게 어떤 이득을 가져다줄까? 첫째, 목표가 명확해진다. 무엇을 해야하는지 역시 분명해진다. 둘째, 달성이 쉬워진다. 성취감은 그 어떤 보상보다 강력하다. 셋째, 행동의 양이 많아진다. '양보다 질'이라는 말은 습관 설계에서만큼은 통하지 않는다. 물론 무조건 많이 시도하는 것이 능사는 아니다. 책 한 장을 넘길 때마다 달성을 축하하자는 말은 아닌 것이다. 그러나 책을 읽다 보면 어느 순간 그 속도가 빨라졌음을 느낄 수 있듯, 1%의 변화들이 모여 복리로 작용한다고 생각하면 이야기는 달라진다."),
        
        Book(title: "8 긴긴밤", author: "루리", coverImage: UIImage(named: "긴긴밤"), introduction: "코끼리 고아원에서 자란 세상에 마지막 하나 남은 코뿔소. 안락한 코끼리 고아원을 나와 험난한 세상으로 발을 내디딘다. 자유와 행복을 맛보고 다시 동물원에 갇힌다. 그곳에서 어린 펭귄과 조우한다. 펭귄과 코뿔소는 동물원을 나와 반드시 가야 할 곳 '바다'로 향한다. 코뿔소는 코끼리들의 보살핌과 관심 덕분에 세상으로 향할 용기가 생겼다. 알을 깨고 나왔을 때부터 주변에 펭귄은커녕 커다란 코뿔소밖에 없던 아기 펭귄은 코뿔소가 전해주는 이야기와 온기가 아니었다면 바다로 향해야 한다고 생각지 못했을 것이다. 우리는 모두 친구라는 말이 무색할 정도로 동떨어져 지내는 와중이다. 하물며 생김새가 비슷한 사람끼리도 치고받고 싸운다. 그 틈에서 피어나는 건 온기가 아니라 한기다.코뿔소와 펭귄의 우정은 뻔하지만, 연대가 무엇인지 되묻는다.어떤 일들은 기대서 걸으면 큰 문제가 아니다."),
        
        Book(title: "9 달팽이 식당", author: "오가와 이토", coverImage: UIImage(named: "달팽이-식당"), introduction: "어느 조용한 산골 마을, 작은 식당에 모여든 평범한 사람들에게 일어난 기적 같은 이야기를 그린 소설 《달팽이 식당》이 새로운 번역과 디자인으로 돌아왔다. 작가는 《달팽이 식당》의 주인공 링고와 저마다의 내밀한 상처를 지닌 손님들의 사연을 통해 시련을 딛고 삶을 긍정하며 계속 살아나가는 법에 대해 들려준다.식당 이름에는 인생이 일순간 무너져 내리는 듯한 절망을 경험하고서도 ‘달팽이처럼 내 삶의 무게를 오롯이 짊어지고서 천천히 앞으로 나아가겠다’는 주인공의 다부진 결심과 의지가 담겨 있다. 과거의 아픔 혹은 외로움과 마주할 용기가 필요한 사람, 일상에 지친 마음을 잠시라도 행복한 기운으로 감싸 줄 이야기를 찾는 독자라면, 이 책을 펼치는 순간 달팽이 식당의 상냥한 치유 마법이 반짝이기 시작할 것이다. 이번 개정판에는 새로운 단편 《초코문》도 함께 실렸다. ‘달팽이 식당의 요리를 먹으면 사랑과 소원이 이루어진다’는 소문을 듣고 찾아온 특별한 커플의 이야기가 또 다른 재미와 감동을 선사한다.")
    ]
}
