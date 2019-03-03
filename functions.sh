-ltop()
{
	top
}
-lps()
{
	ps -aux
}
-user()
{
	ps -u $user
}
-mtop()
{
	top -b -o +%MEM | head -n 12
}