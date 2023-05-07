@echo off
migrate create -dir %cd%\migration -ext sql -seq -digits 6 %1