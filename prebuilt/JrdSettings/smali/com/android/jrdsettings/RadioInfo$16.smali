.class Lcom/android/jrdsettings/RadioInfo$16;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 984
    iput-object p1, p0, Lcom/android/jrdsettings/RadioInfo$16;->this$0:Lcom/android/jrdsettings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 987
    const-string v3, "phone"

    const-string v4, "toggle %s: currently %s"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "persist.radio.ramdump"

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$16;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->isSmsOverImsEnabled()Z
    invoke-static {v1}, Lcom/android/jrdsettings/RadioInfo;->access$3600(Lcom/android/jrdsettings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$16;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->isLteRamDumpEnabled()Z
    invoke-static {v1}, Lcom/android/jrdsettings/RadioInfo;->access$3800(Lcom/android/jrdsettings/RadioInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 990
    .local v0, newValue:Z
    :goto_1
    const-string v2, "persist.radio.ramdump"

    if-eqz v0, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v1, p0, Lcom/android/jrdsettings/RadioInfo$16;->this$0:Lcom/android/jrdsettings/RadioInfo;

    #calls: Lcom/android/jrdsettings/RadioInfo;->updateLteRamDumpState()V
    invoke-static {v1}, Lcom/android/jrdsettings/RadioInfo;->access$3900(Lcom/android/jrdsettings/RadioInfo;)V

    .line 992
    return-void

    .line 987
    .end local v0           #newValue:Z
    :cond_0
    const-string v1, "off"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 989
    goto :goto_1

    .line 990
    .restart local v0       #newValue:Z
    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method