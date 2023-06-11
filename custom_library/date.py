import builtins
from datetime import datetime, timedelta


def get_date():
    now = datetime.now()
    date_time_str = now.strftime("%m-%d-%Y")
    return builtins.str(date_time_str)