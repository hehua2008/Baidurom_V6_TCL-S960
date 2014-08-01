.class Lcom/android/jrdsettings/deviceinfo/Status$5;
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
    .line 252
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/Status$5;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .parameter "serviceState"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Status$5;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/jrdsettings/deviceinfo/Status;->mServiceState:I
    invoke-static {v0, v1}, Lcom/android/jrdsettings/deviceinfo/Status;->access$802(Lcom/android/jrdsettings/deviceinfo/Status;I)I

    .line 256
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/Status$5;->this$0:Lcom/android/jrdsettings/deviceinfo/Status;

    #calls: Lcom/android/jrdsettings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/android/jrdsettings/deviceinfo/Status;->access$100(Lcom/android/jrdsettings/deviceinfo/Status;Landroid/telephony/ServiceState;)V

    .line 257
    return-void
.end method
