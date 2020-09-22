# health-check
Simple Docker Image To Do A Health Check On A URL Every 5 Seconds

```
Very Basic And Nothing Fancy, Check A URL Every 5 Seconds And returns the Result.
Timeout Interval Is 5 Seconds.
```

```
To Run:
docker run --rm --name health_check -d -e URL="http(s)://URL" shapsough/healthcheck:latest

- You Must Set the URL Environment Variable Or The Container Will Exit
- You Can Mount A Volume On "/health_check_logs" To Persist The Data Or Push It Someplace Else.
```

```
To Read Logs:
docker exec -it health_check tail -f /health_check_logs/logs.log
```

```
To Stop Container:
docker stop health_check
```

Feel Free To Edit The Basic Script And Dockerfile To Serve Your Needs.
