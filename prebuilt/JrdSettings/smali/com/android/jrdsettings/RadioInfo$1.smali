.class Lcom/android/jrdsettings/RadioInfo$1;
.super Landroid/telephony/PhoneStateListener;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/RadioInfo;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallForwardingIndicatorChanged(Z)V
    .locals 1
    .parameter "cfi"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #setter for: Lcom/android/jrdsettings/RadioInfo;->mCfiValue:Z
    invoke-static {v0, p1}, Lcom/android/jrdsettings/RadioInfo;->access$802(Lcom/android/jrdsettings/RadioInfo;Z)Z

    .line 175
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateCallRedirect()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$900(Lcom/android/jrdsettings/RadioInfo;)V

    .line 176
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, arrayCi:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/CellInfo;>;"
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RadioInfo] onCellInfoChanged: arrayCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #setter for: Lcom/android/jrdsettings/RadioInfo;->mCellInfoValue:Ljava/util/List;
    invoke-static {v0, p1}, Lcom/android/jrdsettings/RadioInfo;->access$1002(Lcom/android/jrdsettings/RadioInfo;Ljava/util/List;)Ljava/util/List;

    .line 182
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateCellInfoTv()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$1100(Lcom/android/jrdsettings/RadioInfo;)V

    .line 183
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 1
    .parameter "location"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V
    invoke-static {v0, p1}, Lcom/android/jrdsettings/RadioInfo;->access$500(Lcom/android/jrdsettings/RadioInfo;Landroid/telephony/CellLocation;)V

    .line 164
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateDataStats2()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$400(Lcom/android/jrdsettings/RadioInfo;)V

    .line 159
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateDataState()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$000(Lcom/android/jrdsettings/RadioInfo;)V

    .line 151
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateDataStats()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$100(Lcom/android/jrdsettings/RadioInfo;)V

    .line 152
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updatePdpList()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$200(Lcom/android/jrdsettings/RadioInfo;)V

    .line 153
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateNetworkType()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$300(Lcom/android/jrdsettings/RadioInfo;)V

    .line 154
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 1
    .parameter "mwi"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #setter for: Lcom/android/jrdsettings/RadioInfo;->mMwiValue:Z
    invoke-static {v0, p1}, Lcom/android/jrdsettings/RadioInfo;->access$602(Lcom/android/jrdsettings/RadioInfo;Z)Z

    .line 169
    iget-object v0, p0, Lcom/android/jrdsettings/RadioInfo$1;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateMessageWaiting()V
    invoke-static {v0}, Lcom/android/jrdsettings/RadioInfo;->access$700(Lcom/android/jrdsettings/RadioInfo;)V

    .line 170
    return-void
.end method
