FROM continuumio/anaconda3
COPY . /usr/app/
EXPOSE 8503
WORKDIR /usr/app/
RUN pip install -r requirements.txt
ENTRYPOINT ["streamlit", "run", "st_video_tester.py", "--server.port=8503", "--server.address=0.0.0.0"]