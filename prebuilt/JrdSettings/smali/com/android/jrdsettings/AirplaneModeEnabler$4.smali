.class Lcom/android/jrdsettings/AirplaneModeEnabler$4;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneModeEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/AirplaneModeEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/AirplaneModeEnabler;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/AirplaneModeEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/jrdsettings/AirplaneModeEnabler$4;->this$0:Lcom/android/jrdsettings/AirplaneModeEnabler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 134
    const-string v0, "AirplaneModeEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PhoneStateListener3.onServiceStateChanged: serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/jrdsettings/AirplaneModeEnabler$4;->this$0:Lcom/android/jrdsettings/AirplaneModeEnabler;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/android/jrdsettings/AirplaneModeEnabler;->mServiceState3:I
    invoke-static {v0, v1}, Lcom/android/jrdsettings/AirplaneModeEnabler;->access$502(Lcom/android/jrdsettings/AirplaneModeEnabler;I)I

    .line 136
    iget-object v0, p0, Lcom/android/jrdsettings/AirplaneModeEnabler$4;->this$0:Lcom/android/jrdsettings/AirplaneModeEnabler;

    #calls: Lcom/android/jrdsettings/AirplaneModeEnabler;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/jrdsettings/AirplaneModeEnabler;->access$300(Lcom/android/jrdsettings/AirplaneModeEnabler;)V

    .line 137
    return-void
.end method
