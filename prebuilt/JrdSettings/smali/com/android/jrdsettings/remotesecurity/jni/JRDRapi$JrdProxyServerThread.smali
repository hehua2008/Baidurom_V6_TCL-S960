.class Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;
.super Ljava/lang/Thread;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JrdProxyServerThread"
.end annotation


# instance fields
.field private poll:Z

.field private proc:Ljava/lang/Process;

.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;


# direct methods
.method private constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 357
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 359
    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$600(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 360
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JrdProxyServer executable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$600(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doesn\'t exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 364
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$600(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$100(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --debug "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    iput-object v3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->proc:Ljava/lang/Process;

    .line 368
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$100(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 369
    .local v0, pipe:Ljava/io/File;
    const/4 v1, 0x0

    .line 371
    .local v1, retry:I
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v2, v1, 0x1

    .end local v1           #retry:I
    .local v2, retry:I
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    .line 372
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    move v1, v2

    .end local v2           #retry:I
    .restart local v1       #retry:I
    goto :goto_0

    .end local v1           #retry:I
    .restart local v2       #retry:I
    :cond_1
    move v1, v2

    .line 375
    .end local v2           #retry:I
    .restart local v1       #retry:I
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 376
    new-instance v3, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "create "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$100(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 379
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->poll:Z

    .line 380
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 383
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 1

    .prologue
    .line 411
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->poll:Z

    .line 412
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    .line 390
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->proc:Ljava/lang/Process;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 392
    .local v2, reader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->poll:Z

    if-eqz v3, :cond_1

    .line 393
    invoke-virtual {v2}, Ljava/io/BufferedReader;->ready()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 396
    const-string v3, "JRDRapi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$600(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " stdout : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    .end local v1           #line:Ljava/lang/String;
    .end local v2           #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/io/IOException;
    const-string v3, "JRDRapi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t read stdout of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->prog:Ljava/io/File;
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$600(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-void

    .line 400
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_1
    const-string v3, "JRDRapi"

    const-string v4, "stop proxy Thread"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 402
    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$JrdProxyServerThread;->proc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
