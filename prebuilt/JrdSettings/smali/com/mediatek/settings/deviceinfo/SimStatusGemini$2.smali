.class Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataConnectionStateChanged(II)V
    .locals 2
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 141
    const-string v0, "Gemini_SimStatus"

    const-string v1, "onDataConnectionStateChanged"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #calls: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateDataState()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$500(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    .line 143
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #calls: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateNetworkType()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$600(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    .line 144
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getMySimId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    #setter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I
    invoke-static {v0, v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$902(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;I)I

    .line 160
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ServiceStateChanged mSlotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mServiceState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mServiceState:I
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$900(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #calls: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateServiceState(Landroid/telephony/ServiceState;)V
    invoke-static {v0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$1000(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/ServiceState;)V

    .line 163
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-virtual {v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 165
    :cond_0
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 3
    .parameter "signalStrength"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getMySimId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #setter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$802(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 150
    const-string v0, "Gemini_SimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SignalStrengthsChanged mSlotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSignalStrength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    #getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSignalStrength:Landroid/telephony/SignalStrength;
    invoke-static {v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$800(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Landroid/telephony/SignalStrength;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-virtual {v0}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->updateSignalStrength()V

    .line 154
    :cond_0
    return-void
.end method
