.class public Lcom/android/jrdsettings/VersionAPI;
.super Ljava/lang/Object;
.source "VersionAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/VersionAPI$file_type_t;
    }
.end annotation


# static fields
.field private static CustpackVerFile:Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "VersionAPI"

.field private static final MAIN_VERSION:Ljava/lang/String; = "mainVersion"

.field private static ModemVerBuffer:I = 0x0

.field private static final PERSO_VERSION:Ljava/lang/String; = "persoVersion"

.field private static READ_ERROR_STR:Ljava/lang/String; = null

.field private static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "versioninfo_stored_settings"

.field private static final SHARED_PREFERENCES_NAME_X:Ljava/lang/String; = "versioninfo_stored_settings_x"

.field private static SystemVerFile:Ljava/lang/String;

.field private static bFotaUpdateAtLastTime:Z

.field private static bIsFotaUpdatedCalled:Z

.field public static sFotaUpdateHappened:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    sput-boolean v1, Lcom/android/jrdsettings/VersionAPI;->sFotaUpdateHappened:Z

    .line 49
    const/16 v0, 0x100

    sput v0, Lcom/android/jrdsettings/VersionAPI;->ModemVerBuffer:I

    .line 50
    const-string v0, "/system/system.ver"

    sput-object v0, Lcom/android/jrdsettings/VersionAPI;->SystemVerFile:Ljava/lang/String;

    .line 51
    const-string v0, "/custpack/custpack.ver"

    sput-object v0, Lcom/android/jrdsettings/VersionAPI;->CustpackVerFile:Ljava/lang/String;

    .line 52
    const-string v0, "Error occurs during open the file!"

    sput-object v0, Lcom/android/jrdsettings/VersionAPI;->READ_ERROR_STR:Ljava/lang/String;

    .line 55
    sput-boolean v1, Lcom/android/jrdsettings/VersionAPI;->bIsFotaUpdatedCalled:Z

    .line 56
    sput-boolean v1, Lcom/android/jrdsettings/VersionAPI;->bFotaUpdateAtLastTime:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static firstbootInit(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 118
    const/4 v2, 0x0

    .line 119
    .local v2, fotaUpdate:Z
    invoke-static {}, Lcom/android/jrdsettings/VersionAPI;->getSystemVer()Ljava/lang/String;

    move-result-object v8

    .line 120
    .local v8, systemVer:Ljava/lang/String;
    invoke-static {}, Lcom/android/jrdsettings/VersionAPI;->getCustpackVer()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, custpackVer:Ljava/lang/String;
    const-string v9, "VersionAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "systemVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", custpackVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v9, 0x2

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, mainVersion:Ljava/lang/String;
    const/4 v9, 0x4

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, persoVersion:Ljava/lang/String;
    const-string v9, "VersionAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mainVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", persoVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v9, "versioninfo_stored_settings"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 126
    .local v5, sharedPref:Landroid/content/SharedPreferences;
    const-string v9, "mainVersion"

    const-string v10, ""

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, storedMainVersion:Ljava/lang/String;
    const-string v9, "persoVersion"

    const-string v10, ""

    invoke-interface {v5, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 128
    .local v7, storedPersoVersion:Ljava/lang/String;
    const-string v9, "VersionAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "storedMainVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", storedPersoVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 130
    const/4 v2, 0x1

    .line 134
    :cond_0
    :goto_0
    sput-boolean v2, Lcom/android/jrdsettings/VersionAPI;->sFotaUpdateHappened:Z

    .line 135
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 136
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "mainVersion"

    invoke-interface {v1, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 137
    const-string v9, "persoVersion"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 139
    return-void

    .line 131
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string v9, ""

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 132
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getCustpackVer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 105
    sget-object v0, Lcom/android/jrdsettings/VersionAPI;->CustpackVerFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/jrdsettings/VersionAPI;->getVerFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSystemVer()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 100
    sget-object v0, Lcom/android/jrdsettings/VersionAPI;->SystemVerFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/jrdsettings/VersionAPI;->getVerFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getVerFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "FileName"

    .prologue
    .line 76
    const-string v1, ""

    .line 77
    .local v1, Output:Ljava/lang/String;
    const-string v4, "VersionAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getVerFromFile file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/android/jrdsettings/VersionAPI;->ModemVerBuffer:I

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 81
    .local v2, buffer:Ljava/io/BufferedReader;
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, Input:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_1

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 83
    if-nez v0, :cond_0

    move-object v4, v1

    .line 93
    .end local v0           #Input:Ljava/lang/String;
    .end local v2           #buffer:Ljava/io/BufferedReader;
    :goto_1
    return-object v4

    .restart local v0       #Input:Ljava/lang/String;
    .restart local v2       #buffer:Ljava/io/BufferedReader;
    :cond_1
    move-object v4, v0

    .line 82
    goto :goto_0

    .line 84
    .end local v0           #Input:Ljava/lang/String;
    .end local v2           #buffer:Ljava/io/BufferedReader;
    :catch_0
    move-exception v3

    .line 85
    .local v3, e:Ljava/io/FileNotFoundException;
    :try_start_1
    const-string v4, "VersionAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot open file"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    sget-object v4, Lcom/android/jrdsettings/VersionAPI;->READ_ERROR_STR:Ljava/lang/String;

    goto :goto_1

    .line 87
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 88
    .local v3, e:Ljava/io/IOException;
    const-string v4, "VersionAPI"

    const-string v5, "file read error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sget-object v4, Lcom/android/jrdsettings/VersionAPI;->READ_ERROR_STR:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 90
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    throw v4
.end method

.method public static isFotaUpdated(Landroid/content/Context;)Z
    .locals 12
    .parameter "context"

    .prologue
    .line 142
    const/4 v2, 0x0

    .line 143
    .local v2, fotaUpdate:Z
    sget-boolean v9, Lcom/android/jrdsettings/VersionAPI;->bIsFotaUpdatedCalled:Z

    if-eqz v9, :cond_0

    .line 144
    sget-boolean v2, Lcom/android/jrdsettings/VersionAPI;->bFotaUpdateAtLastTime:Z

    .line 172
    :goto_0
    return v2

    .line 146
    :cond_0
    const-string v9, "versioninfo_stored_settings_x"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 148
    .local v7, sharedPref:Landroid/content/SharedPreferences;
    const-string v9, "mainVersion"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, prefMainVer:Ljava/lang/String;
    const-string v9, "persoVersion"

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 150
    .local v6, prefPersoVersion:Ljava/lang/String;
    const-string v9, "VersionAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFotaUpdated storedMainVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", storedPersoVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/android/jrdsettings/VersionAPI;->getSystemVer()Ljava/lang/String;

    move-result-object v8

    .line 154
    .local v8, systemVer:Ljava/lang/String;
    invoke-static {}, Lcom/android/jrdsettings/VersionAPI;->getCustpackVer()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, custpackVer:Ljava/lang/String;
    const-string v9, "VersionAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFotaUpdated systemVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", custpackVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v9, 0x2

    const/4 v10, 0x5

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, mainVersion:Ljava/lang/String;
    const/4 v9, 0x4

    const/16 v10, 0x8

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, persoVersion:Ljava/lang/String;
    const-string v9, "VersionAPI"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isFotaUpdated mainVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", persoVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, ""

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 162
    const/4 v2, 0x1

    .line 166
    :cond_1
    :goto_1
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 167
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v9, "mainVersion"

    invoke-interface {v1, v9, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 168
    const-string v9, "persoVersion"

    invoke-interface {v1, v9, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    sput-boolean v2, Lcom/android/jrdsettings/VersionAPI;->bIsFotaUpdatedCalled:Z

    goto/16 :goto_0

    .line 163
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ""

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 164
    const/4 v2, 0x1

    goto :goto_1
.end method
