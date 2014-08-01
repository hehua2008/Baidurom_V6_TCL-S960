.class Lcom/android/jrdsettings/ApnSettings$2;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IRcseOnlyApnExtension$OnRcseOnlyApnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/jrdsettings/ApnSettings$2;->this$0:Lcom/android/jrdsettings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRcseOnlyApnStateChanged(Z)V
    .locals 3
    .parameter "isEnabled"

    .prologue
    .line 231
    const-string v0, "ApnSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRcseOnlyApnStateChanged()-current state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$2;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #getter for: Lcom/android/jrdsettings/ApnSettings;->mIsGetSlotId:Z
    invoke-static {v0}, Lcom/android/jrdsettings/ApnSettings;->access$1100(Lcom/android/jrdsettings/ApnSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/jrdsettings/ApnSettings$2;->this$0:Lcom/android/jrdsettings/ApnSettings;

    #calls: Lcom/android/jrdsettings/ApnSettings;->fillList()V
    invoke-static {v0}, Lcom/android/jrdsettings/ApnSettings;->access$200(Lcom/android/jrdsettings/ApnSettings;)V

    .line 235
    :cond_0
    return-void
.end method
