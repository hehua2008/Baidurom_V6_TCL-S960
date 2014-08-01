.class Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;
.super Ljava/lang/Thread;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CmdThread"
.end annotation


# instance fields
.field private para:[S

.field private result:I

.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;SSSS)V
    .locals 2
    .parameter
    .parameter "cmd"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 282
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 279
    const/4 v0, 0x4

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    .line 280
    iput v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->result:I

    .line 283
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    aput-short p2, v0, v1

    .line 284
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v1, 0x1

    aput-short p3, v0, v1

    .line 285
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v1, 0x2

    aput-short p4, v0, v1

    .line 286
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v1, 0x3

    aput-short p5, v0, v1

    .line 288
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 289
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$100(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v3, 0x1

    aget-short v2, v2, v3

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v4, 0x2

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->para:[S

    const/4 v5, 0x3

    aget-short v4, v4, v5

    #calls: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendcmd(Ljava/lang/String;SSSS)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$200(Ljava/lang/String;SSSS)I

    move-result v0

    iput v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->result:I

    .line 294
    const-string v0, "JRDRapi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendcmd returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CmdThread;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method
