.class Lcom/android/jrdsettings/deviceinfo/Status$2;
.super Landroid/telephony/PhoneStateListener;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/Status;)V
    .locals 0
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Status$2;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Status$2;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    #calls: Lcom/android/jrdsettings/deviceinfo/Status;->updateDataState()V
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/Status;->access$500(Lcom/android/jrdsettings/deviceinfo/Status;)V

    .line 223
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Status$2;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    #calls: Lcom/android/jrdsettings/deviceinfo/Status;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/Status;->access$600(Lcom/android/jrdsettings/deviceinfo/Status;)V

    .line 224
    return-void
.end method
