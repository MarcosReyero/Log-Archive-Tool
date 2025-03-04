# Log Archive Tool
## Project Roadmap

This project is part of the [DevOps Roadmap](https://roadmap.sh/projects/log-archive-tool). It helps me build and improve my skills as a system administrator and DevOps professional by automating log archiving tasks. Check the roadmap for more projects that I am working on to expand my knowledge in DevOps and system administration.

## Description

The **Log Archive Tool** is a simple bash script that allows users to archive log files from a specified directory. It compresses the logs into a `.tar.gz` file and stores them in a backup directory. The script also logs the date and time of each archiving operation to a log file.

This tool is especially useful for managing log files in a Unix-based system, helping to keep the system clean while preserving logs for future reference.

## Installation & Requirements

- **A Unix-based system** (e.g., Linux, macOS).
- **Bash** installed (default on most Unix-based systems).
- **Permissions**: The script needs access to the log directory (e.g., `/var/log`) and requires root access for reading certain logs.

## How to Use It

1. **Clone the repository** (if you haven't already):
    ```bash
    git clone https://github.com/yourusername/log-archive-tool.git
    cd log-archive-tool
    ```

2. **Make the script executable**:
    ```bash
    chmod +x log-archive.sh
    ```

3. **Run the script** with a log directory as an argument:
    ```bash
    ./log-archive.sh /var/log
    ```

    Replace `/var/log` with the path to your desired log directory.

4. **View the archive log**:
    The script logs the date and time of each archive operation to a file called `archive_log.txt`.

    To view the latest operation:
    ```bash
    tail -n 1 archive_log.txt
    ```

5. **Extract archived logs**:
    If you want to extract the contents of an archive:
    ```bash
    tar -xzf log_backups/logs_archive_YYYYMMDD_HHMMSS.tar.gz -C extracted_logs/
    ```

## Example Output

- After running the script, an archive will be created in the `log_backups/` directory:
    ```
    logs_archive_20250304_110821.tar.gz
    ```

- The operation will be logged in the `archive_log.txt` file with an entry like:
    ```
    20250304_110821: Archived logs from /var/log to ./log_backups/logs_archive_20250304_110821.tar.gz
    ```

## Additional Features & Future Improvements

- Email notifications on successful archiving.
- Option to send archives to remote servers or cloud storage.
- Improved error handling and logging features.

