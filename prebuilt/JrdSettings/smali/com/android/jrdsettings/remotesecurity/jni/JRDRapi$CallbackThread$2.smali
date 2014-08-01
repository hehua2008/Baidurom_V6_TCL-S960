.class Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;
.super Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;SLjava/lang/StringBuffer;SSS)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

.field final synthetic val$res:Ljava/lang/StringBuffer;

.field final synthetic val$this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;Ljava/lang/StringBuffer;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    iput-object p2, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->val$this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    iput-object p3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->val$res:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 7

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->val$res:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    iget-object v1, v1, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->mPipeName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$100(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S
    invoke-static {v2}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->access$400(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)[S

    move-result-object v2

    const/4 v3, 0x0

    aget-short v2, v2, v3

    iget-object v3, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S
    invoke-static {v3}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->access$400(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)[S

    move-result-object v3

    const/4 v4, 0x1

    aget-short v3, v3, v4

    iget-object v4, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S
    invoke-static {v4}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->access$400(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)[S

    move-result-object v4

    const/4 v5, 0x2

    aget-short v4, v4, v5

    iget-object v5, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->this$1:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;

    #getter for: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S
    invoke-static {v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->access$400(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)[S

    move-result-object v5

    const/4 v6, 0x3

    aget-short v5, v5, v6

    #calls: Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->sendcmdForStrResult(Ljava/lang/String;SSSS)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;->access$500(Ljava/lang/String;SSSS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    const-string v0, "JRDRapi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendcmdForStrResult returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;->val$res:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method
