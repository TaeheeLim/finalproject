const gantt = {
  namespaced: true,
  state: {
    chart: {
      id: "",
      projName: "",
      projStart: "",
      projEnd: "",
      progress: "",
      showCal: true,
      tasks: {
        2021: {
          12: [
            {
              memId: "zerochae",
              title: "task1",
              content: "내용1",
              start: "03",
              end: "04",
              state: "Y",
              priority: "낮음",
              progress: "30",
              img: "con1.jpg",
            },
            {
              memId: "juwon",
              title: "task2",
              content: "내용2",
              start: "04",
              end: "05",
              state: "Y",
              priority: "보통",
              progress: "70",
              img: "con1.jpg",
            },
            {
              memId: "daeg",
              title: "task3",
              content: "내용3",
              start: "05",
              end: "06",
              state: "Y",
              priority: "높음",
              progress: "50",
              img: "con1.jpg",
            },
            {
              memId: "th",
              title: "task4",
              content: "내용4",
              start: "07",
              end: "08",
              state: "Y",
              priority: "긴급",
              progress: "10",
              img: "con1.jpg",
            },
            {
              memId: "chang",
              title: "task5",
              content: "내용5",
              start: "10",
              end: "13",
              state: "N",
              priority: "즉시",
              progress: "100",
              img: "con1.jpg",
            },
          ],
          11: [
            {
              memId: "zerochae",
              title: "task1",
              content: "내용1",
              start: "07",
              end: "09",
              state: "Y",
              priority: "낮음",
              progress: "30",
              img: "con1.jpg",
            },
            {
              memId: "juwon",
              title: "task2",
              content: "내용2",
              start: "10",
              end: "11",
              state: "Y",
              priority: "보통",
              progress: "70",
              img: "con1.jpg",
            },
            {
              memId: "daeg",
              title: "task3",
              content: "내용3",
              start: "13",
              end: "15",
              state: "Y",
              priority: "높음",
              progress: "50",
              img: "con1.jpg",
            },
            {
              memId: "th",
              title: "task4",
              content: "내용4",
              start: "18",
              end: "19",
              state: "Y",
              priority: "긴급",
              progress: "10",
              img: "con1.jpg",
            },
            {
              memId: "chang",
              title: "task5",
              content: "내용5",
              start: "21",
              end: "22",
              state: "N",
              priority: "즉시",
              progress: "100",
              img: "con1.jpg",
            },
          ],
          10: [
            {
              memId: "zerochae",
              title: "task1",
              content: "내용1",
              start: "01",
              end: "03",
              state: "Y",
              priority: "낮음",
              progress: "30",
              img: "con1.jpg",
            },
            {
              memId: "juwon",
              title: "task2",
              content: "내용2",
              start: "05",
              end: "08",
              state: "Y",
              priority: "보통",
              progress: "70",
              img: "con1.jpg",
            },
            {
              memId: "daeg",
              title: "task3",
              content: "내용3",
              start: "11",
              end: "14",
              state: "Y",
              priority: "높음",
              progress: "50",
              img: "con1.jpg",
            },
            {
              memId: "th",
              title: "task4",
              content: "내용4",
              start: "11",
              end: "15",
              state: "Y",
              priority: "긴급",
              progress: "10",
              img: "con1.jpg",
            },
            {
              memId: "chang",
              title: "task5",
              content: "내용5",
              start: "13",
              end: "29",
              state: "N",
              priority: "즉시",
              progress: "100",
              img: "con1.jpg",
            },
          ],
        },
      },
    },
    detail: "",
    openYear: "",
    openMonth: "",
    openIndex: "",
  },
  mutations: {
    insert(state, payload) {
      state.chart.tasks[payload[2].start.year][payload[0]].push(payload[1]);
      
      // let dataInfo = payload[3];

      // if(dataInfo.start.year !== dataInfo.end.year){
      // }
      
    },
    select(state, payload) {
      state.detail = state.chart.tasks[payload[3]][payload[0]][payload[1]];
      state.openIndex = payload[1];
      state.openMonth = payload[2];
      state.openYear = payload[3];
    },
    update(state, payload) {
      state.chart.tasks[state.openYear][state.openMonth][state.openIndex] = payload[2];
    },
    delete(state) {
      state.chart.tasks[state.openYear][state.openMonth].splice(state.openIndex, 1);
    },
  },
  actions: {},
};

export default gantt;
