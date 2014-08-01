.class Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;
.super Ljava/lang/Thread;
.source "JRDRapi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallbackThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;
    }
.end annotation


# instance fields
.field private cb:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;

.field private mResult:I

.field private para:[S

.field final synthetic this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;SLjava/lang/StringBuffer;SSS)V
    .locals 2
    .parameter
    .parameter "cmd"
    .parameter "res"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 324
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    .line 325
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x0

    aput-short p2, v0, v1

    .line 326
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x1

    aput-short p4, v0, v1

    .line 327
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x2

    aput-short p5, v0, v1

    .line 328
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x3

    aput-short p6, v0, v1

    .line 329
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$2;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;Ljava/lang/StringBuffer;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->cb:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;

    .line 336
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 337
    return-void
.end method

.method constructor <init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;SSSS)V
    .locals 2
    .parameter
    .parameter "cmd"
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->this$0:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 300
    const/4 v0, 0x4

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    .line 310
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x0

    aput-short p2, v0, v1

    .line 311
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x1

    aput-short p3, v0, v1

    .line 312
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x2

    aput-short p4, v0, v1

    .line 313
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    const/4 v1, 0x3

    aput-short p5, v0, v1

    .line 314
    new-instance v0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$1;

    invoke-direct {v0, p0, p1}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$1;-><init>(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi;)V

    iput-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->cb:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;

    .line 321
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 322
    return-void
.end method

.method static synthetic access$300(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->mResult:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 298
    iput p1, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->mResult:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;)[S
    .locals 1
    .parameter "x0"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->para:[S

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread;->cb:Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;

    invoke-virtual {v0}, Lcom/android/jrdsettings/remotesecurity/jni/JRDRapi$CallbackThread$CallBack;->c()V

    .line 341
    return-void
.end method
