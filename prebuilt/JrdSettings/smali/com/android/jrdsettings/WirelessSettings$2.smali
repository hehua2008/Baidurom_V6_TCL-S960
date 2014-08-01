.class Lcom/android/jrdsettings/WirelessSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "WirelessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/WirelessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/WirelessSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Lcom/android/jrdsettings/WirelessSettings$2;->this$0:Lcom/android/jrdsettings/WirelessSettings;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 413
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 414
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PhoneStateListener, new state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/jrdsettings/WirelessSettings$2;->this$0:Lcom/android/jrdsettings/WirelessSettings;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 416
    iget-object v2, p0, Lcom/android/jrdsettings/WirelessSettings$2;->this$0:Lcom/android/jrdsettings/WirelessSettings;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Lcom/android/jrdsettings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 418
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    .line 420
    .local v0, currPhoneCallState:I
    const-string v2, "WirelessSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Total PhoneState ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-nez v0, :cond_0

    .line 423
    iget-object v2, p0, Lcom/android/jrdsettings/WirelessSettings$2;->this$0:Lcom/android/jrdsettings/WirelessSettings;

    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    #setter for: Lcom/android/jrdsettings/WirelessSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;
    invoke-static {v2, v3}, Lcom/android/jrdsettings/WirelessSettings;->access$302(Lcom/android/jrdsettings/WirelessSettings;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;

    .line 424
    iget-object v2, p0, Lcom/android/jrdsettings/WirelessSettings$2;->this$0:Lcom/android/jrdsettings/WirelessSettings;

    #calls: Lcom/android/jrdsettings/WirelessSettings;->updateMobileNetworkEnabled()V
    invoke-static {v2}, Lcom/android/jrdsettings/WirelessSettings;->access$400(Lcom/android/jrdsettings/WirelessSettings;)V

    .line 427
    .end local v0           #currPhoneCallState:I
    .end local v1           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void
.end method
