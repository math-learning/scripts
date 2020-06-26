# clone repositories
cd ..

git clone https://github.com/math-learning/courses-service.git
git clone https://github.com/math-learning/exercises-service.git
git clone https://github.com/math-learning/math-learning-frontend.git
git clone https://github.com/math-learning/math-solver.git
git clone https://github.com/math-learning/users-service.git

cd ./courses-service && git pull && npm install
cd ../exercises-service && git pull && npm install
cd ../math-learning-frontend && git pull && npm install
cd ../math-solver && git pull  && pip3 install -r requirements.txt
cd ../users-service && git pull && npm install
