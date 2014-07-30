.class public Landroid/os/JrdFileUtils;
.super Ljava/lang/Object;
.source "JrdFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/JrdFileUtils$WhiteListFileListener;
    }
.end annotation


# static fields
.field public static ALARM_NOTIFICATION:Ljava/lang/String;

.field public static APP_WHITELIST:Ljava/lang/String;

.field public static AUTO_SYNC:Ljava/lang/String;

.field public static BLUETOOTH:Ljava/lang/String;

.field public static CALENDER_NOTIFICATION:Ljava/lang/String;

.field public static DATA_TRAFFIC:Ljava/lang/String;

.field public static final GENRES:[Ljava/lang/String;

.field public static GPS:Ljava/lang/String;

.field public static INCOMECALL:Ljava/lang/String;

.field public static LED_NOTIFICATION:Ljava/lang/String;

.field public static WIFI:Ljava/lang/String;

.field private static mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private mFilePath:Ljava/lang/String;

.field private mListener:Landroid/os/JrdFileUtils$WhiteListFileListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const-string v0, "Data Traffic"

    sput-object v0, Landroid/os/JrdFileUtils;->DATA_TRAFFIC:Ljava/lang/String;

    .line 31
    const-string v0, "Wifi"

    sput-object v0, Landroid/os/JrdFileUtils;->WIFI:Ljava/lang/String;

    .line 32
    const-string v0, "LED Notification"

    sput-object v0, Landroid/os/JrdFileUtils;->LED_NOTIFICATION:Ljava/lang/String;

    .line 33
    const-string v0, "BlueTooth"

    sput-object v0, Landroid/os/JrdFileUtils;->BLUETOOTH:Ljava/lang/String;

    .line 34
    const-string v0, "GPS"

    sput-object v0, Landroid/os/JrdFileUtils;->GPS:Ljava/lang/String;

    .line 35
    const-string v0, "Auto-sync"

    sput-object v0, Landroid/os/JrdFileUtils;->AUTO_SYNC:Ljava/lang/String;

    .line 36
    const-string v0, "Incoming calls"

    sput-object v0, Landroid/os/JrdFileUtils;->INCOMECALL:Ljava/lang/String;

    .line 37
    const-string v0, "Calender Notification"

    sput-object v0, Landroid/os/JrdFileUtils;->CALENDER_NOTIFICATION:Ljava/lang/String;

    .line 38
    const-string v0, "Alarm Notification"

    sput-object v0, Landroid/os/JrdFileUtils;->ALARM_NOTIFICATION:Ljava/lang/String;

    .line 39
    const-string v0, "Choose white list apps"

    sput-object v0, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Data Traffic"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BlueTooth"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "GPS"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Auto-sync"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Choose white list apps"

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/JrdFileUtils;->GENRES:[Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    .line 47
    const-string v0, "JrdFileUtils"

    iput-object v0, p0, Landroid/os/JrdFileUtils;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Landroid/os/JrdFileUtils;->readWhiteList()V

    .line 53
    new-instance v0, Landroid/os/JrdFileUtils$WhiteListFileListener;

    iget-object v1, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Landroid/os/JrdFileUtils$WhiteListFileListener;-><init>(Landroid/os/JrdFileUtils;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/os/JrdFileUtils;->mListener:Landroid/os/JrdFileUtils$WhiteListFileListener;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/JrdFileUtils;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/JrdFileUtils;->readWhiteList()V

    return-void
.end method

.method private closeSilently(Ljava/io/Closeable;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 217
    if-nez p1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    if-eqz p1, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/io/IOException;
    iget-object v1, p0, Landroid/os/JrdFileUtils;->TAG:Ljava/lang/String;

    const-string v2, "Exception close io stream"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getWhiteList()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    return-object v0
.end method

.method private readWhiteList()V
    .locals 8

    .prologue
    .line 133
    sget-object v5, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    monitor-enter v5

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, ois:Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 138
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 145
    :cond_0
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v6, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 147
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .local v3, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    sput-object v4, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    .line 148
    invoke-direct {p0, v3}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 155
    :try_start_4
    invoke-direct {p0, v3}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v3

    .line 158
    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_5
    monitor-exit v5

    .line 159
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 141
    .local v0, e:Ljava/lang/Exception;
    iget-object v4, p0, Landroid/os/JrdFileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Create file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 149
    .restart local v1       #file:Ljava/io/File;
    :catch_1
    move-exception v0

    .line 150
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    iget-object v4, p0, Landroid/os/JrdFileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 155
    :try_start_7
    invoke-direct {p0, v2}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 151
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 155
    :goto_4
    invoke-direct {p0, v2}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    .line 153
    :catch_3
    move-exception v4

    .line 155
    :goto_5
    invoke-direct {p0, v2}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_1
    move-exception v4

    :goto_6
    invoke-direct {p0, v2}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 158
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 155
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_6

    .line 153
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_5

    .line 151
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_5
    move-exception v4

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_4

    .line 149
    .end local v2           #ois:Ljava/io/ObjectInputStream;
    .restart local v3       #ois:Ljava/io/ObjectInputStream;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #ois:Ljava/io/ObjectInputStream;
    goto :goto_3
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    .line 58
    :try_start_0
    sget-object v7, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 60
    .local v4, packageManager:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 61
    .local v1, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez v1, :cond_0

    .line 62
    monitor-exit v7

    .line 131
    .end local v1           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 64
    .restart local v1       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #packageManager:Landroid/content/pm/PackageManager;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v5, packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    sget-object v8, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_2

    .line 67
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_d

    .line 69
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 70
    .local v0, ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_1
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v1           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #i:I
    .end local v4           #packageManager:Landroid/content/pm/PackageManager;
    .end local v5           #packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    move-exception v6

    goto :goto_0

    .line 79
    .restart local v1       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v5       #packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_3
    sget-object v6, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    sget-object v8, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    check-cast v5, Ljava/util/ArrayList;

    .line 80
    .restart local v5       #packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 81
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 82
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_4

    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v6

    if-eqz v6, :cond_4

    .line 80
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 85
    :cond_4
    const/4 v3, 0x0

    .line 87
    .local v3, isLauncherAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_4
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const v8, 0x8000

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v3

    .line 90
    :goto_5
    if-nez v3, :cond_3

    .line 91
    :try_start_5
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 96
    .end local v0           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v3           #isLauncherAppInfo:Landroid/content/pm/ApplicationInfo;
    :cond_5
    const-string v6, "com.android.deskclock"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 97
    const-string v6, "com.android.deskclock"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_6
    const-string v6, "com.android.calendar"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 100
    const-string v6, "com.android.calendar"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_7
    const-string v6, "com.mediatek.bluetooth"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 103
    const-string v6, "com.mediatek.bluetooth"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_8
    const-string v6, "com.android.contacts"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 106
    const-string v6, "com.android.contacts"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_9
    const-string v6, "com.android.mms"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 109
    const-string v6, "com.android.mms"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_a
    const-string v6, "com.android.settings"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 112
    const-string v6, "com.android.settings"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_b
    const-string v6, "com.jrdcom.weather"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 115
    const-string v6, "com.jrdcom.weather"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_c
    const-string v6, "com.jrdcom.fota"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 118
    const-string v6, "com.jrdcom.fota"

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_d
    sget-object v6, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    sget-object v8, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v6, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {p0, v6}, Landroid/os/JrdFileUtils;->writeWhiteList(Ljava/util/HashMap;)V

    .line 126
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 88
    .restart local v0       #ai:Landroid/content/pm/ApplicationInfo;
    .restart local v3       #isLauncherAppInfo:Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v6

    goto :goto_5
.end method

.method public startWatching()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/os/JrdFileUtils;->mListener:Landroid/os/JrdFileUtils$WhiteListFileListener;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    .line 172
    return-void
.end method

.method public stopWatching()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/os/JrdFileUtils;->mListener:Landroid/os/JrdFileUtils$WhiteListFileListener;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 178
    return-void
.end method

.method public writeWhiteList(Ljava/util/HashMap;)V
    .locals 8
    .parameter "list"

    .prologue
    .line 188
    sget-object v5, Landroid/os/JrdFileUtils;->mWhiteList:Ljava/util/HashMap;

    monitor-enter v5

    .line 192
    :try_start_0
    sget-object v4, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 193
    sget-object v4, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 194
    .local v3, packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "com.jrdcom.FMRadioWidget"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.mediatek.FMRadio"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const-string v4, "com.jrdcom.FMRadioWidget"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v4, Landroid/os/JrdFileUtils;->APP_WHITELIST:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v3           #packagenames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const/4 v1, 0x0

    .line 203
    .local v1, oos:Ljava/io/ObjectOutputStream;
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .local v2, oos:Ljava/io/ObjectOutputStream;
    :try_start_2
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 205
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    :try_start_3
    invoke-direct {p0, v2}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 213
    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    :goto_0
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    iget-object v4, p0, Landroid/os/JrdFileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 211
    :try_start_5
    invoke-direct {p0, v1}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 213
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v4

    .line 208
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v0

    .line 209
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_6
    iget-object v4, p0, Landroid/os/JrdFileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception write data to file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/JrdFileUtils;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 211
    :try_start_7
    invoke-direct {p0, v1}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    :goto_3
    invoke-direct {p0, v1}, Landroid/os/JrdFileUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 208
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_2

    .line 206
    .end local v1           #oos:Ljava/io/ObjectOutputStream;
    .restart local v2       #oos:Ljava/io/ObjectOutputStream;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #oos:Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
