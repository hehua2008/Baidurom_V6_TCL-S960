.class Lcom/android/jrdsettings/powersaver/JrdBatteryService$1;
.super Landroid/database/ContentObserver;
.source "JrdBatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdBatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/powersaver/JrdBatteryService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 81
    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "power_saving_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    .line 84
    sget-boolean v0, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->mSaverMode:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/jrdsettings/powersaver/JrdBatteryService$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdBatteryService;

    #calls: Lcom/android/jrdsettings/powersaver/JrdBatteryService;->enableFuntions()V
    invoke-static {v0}, Lcom/android/jrdsettings/powersaver/JrdBatteryService;->access$000(Lcom/android/jrdsettings/powersaver/JrdBatteryService;)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    goto :goto_0
.end method
