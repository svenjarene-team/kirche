# justfile for rclone FTP sync to internetwerkKircheFTP server

# Default recipe to run when just is called without arguments
default:
    @just --list

# Sync the current directory to the FTP server root
upload:
    @echo "Uploading current directory to internetwerkKircheFTP server..."
    rclone sync --ftp-explicit-tls --progress --exclude ".git/**" ./ internetwerkKircheFTP:/htdocs
