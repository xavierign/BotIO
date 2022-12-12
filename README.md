# Development and Implementation of a corrective model for definitions in Operations Research exams based on Artificial Intelligence. A pedagogical experience.

As educators, it is interesting to think about how solutions based on Artificial Intelligence can be applied to add value to teaching activities in the university environment, helping in part to overcome difficulties inherent in the current context of public university education in Argentina. In particular, we intend to build and implement a model that corrects questions about definitions in Operations Research exams. That is, to establish the correctness of answers to questions such as: 
What is Operations Research? 
What is a Model? 
What is an Algorithm? 
What is the Simplex Method?
This model can be understood as a function that takes the response text and returns the score assigned to it according to how similar the response of the students is compared to the correct definition. The model, developed by students, is simple in nature and integrates models and algorithms typical of Operations Research and consists of obtaining the correct definition keywords and considering only the stem, i.e. the root; given an answer, the occurrence of those words is counted and the score is assigned based on how many occurrences are observed. This model, although it is a baseline, has a performance similar to the evaluations carried out by human correctors, teachers and students. The model was implemented to correct answers in real exams on Operational Research I of the Industrial Engineering program at the School of Engineering Universtity of Buenos Aires (FIUBA).

Try the [Shiny App](https://xavierign.shinyapps.io/BotIO/)
