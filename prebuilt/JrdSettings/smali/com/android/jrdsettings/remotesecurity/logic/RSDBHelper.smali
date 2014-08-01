.class public Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;
.super Ljava/lang/Object;
.source "RSDBHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RSDBHelper"

.field private static synObj:Ljava/lang/Object;


# instance fields
.field private db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

.field private mImei:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->synObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/util/CommonUtilities;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->initRSDBHelper(Landroid/content/Context;)V

    .line 27
    return-void
.end method


# virtual methods
.method public addOrUpdate(Landroid/content/ContentValues;)V
    .locals 8
    .parameter "values"

    .prologue
    .line 30
    const-string v1, "imei"

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 31
    .local v0, isExist:Z
    sget-object v2, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->synObj:Ljava/lang/Object;

    monitor-enter v2

    .line 32
    if-eqz v0, :cond_0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v3, "rs_info"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "imei"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v3, p1, v4, v5}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->update(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    :goto_0
    monitor-exit v2

    .line 40
    return-void

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v3, "rs_info"

    invoke-virtual {v1, v3, p1}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeDB()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    invoke-virtual {v0}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->closeDatabase()V

    .line 130
    :cond_0
    return-void
.end method

.method public deleteRSInfo()V
    .locals 7

    .prologue
    .line 99
    sget-object v1, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->synObj:Ljava/lang/Object;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v2, "rs_info"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "imei"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->delete(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 101
    monitor-exit v1

    .line 103
    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIntValue(Ljava/lang/String;)I
    .locals 9
    .parameter "key"

    .prologue
    .line 77
    const-string v0, "RSDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntValue key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const/4 v7, 0x0

    .line 79
    .local v7, data:I
    sget-object v8, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->synObj:Ljava/lang/Object;

    monitor-enter v8

    .line 80
    :try_start_0
    const-string v0, "RSDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIntValue key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v1, "rs_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "imei"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 84
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "RSDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";cursor.getCount()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    if-eqz v6, :cond_1

    .line 86
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 90
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->closeDB()V

    .line 94
    monitor-exit v8

    .line 95
    return v7

    .line 94
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    .line 56
    const-string v0, "RSDBHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getStringValue key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/jrdsettings/remotesecurity/util/LogX;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/4 v7, 0x0

    .line 58
    .local v7, data:Ljava/lang/String;
    sget-object v8, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->synObj:Ljava/lang/Object;

    monitor-enter v8

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v1, "rs_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "imei"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 63
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 65
    invoke-interface {v6, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 67
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->closeDB()V

    .line 71
    monitor-exit v8

    .line 72
    return-object v7

    .line 71
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initRSDBHelper(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 109
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    if-nez v2, :cond_1

    .line 110
    if-nez p1, :cond_0

    .line 111
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 113
    :cond_0
    new-instance v2, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    invoke-direct {v2, p1}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    .line 114
    const-string v2, "imei"

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 115
    .local v0, isExist:Z
    if-nez v0, :cond_1

    .line 116
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "imei"

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->mImei:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v3, "rs_info"

    invoke-virtual {v2, v3, v1}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->insert(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 121
    .end local v0           #isExist:Z
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method public isExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "key"
    .parameter "imei"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 43
    sget-object v9, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->synObj:Ljava/lang/Object;

    monitor-enter v9

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/logic/RSDBHelper;->db:Lcom/android/jrdsettings/remotesecurity/service/DBHelper;

    const-string v1, "rs_info"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/jrdsettings/remotesecurity/service/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 46
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 47
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 48
    monitor-exit v9

    move v0, v7

    .line 52
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    monitor-exit v9

    move v0, v8

    .line 52
    goto :goto_0

    .line 51
    .end local v6           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
