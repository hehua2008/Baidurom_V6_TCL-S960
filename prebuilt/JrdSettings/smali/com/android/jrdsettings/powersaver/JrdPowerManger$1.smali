.class Lcom/android/jrdsettings/powersaver/JrdPowerManger$1;
.super Landroid/database/ContentObserver;
.source "JrdPowerManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdPowerManger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/powersaver/JrdPowerManger;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/powersaver/JrdPowerManger;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerManger;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    const/4 v0, 0x1

    .line 136
    invoke-static {}, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->access$100()Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/jrdsettings/powersaver/JrdPowerManger$1;->this$0:Lcom/android/jrdsettings/powersaver/JrdPowerManger;

    #calls: Lcom/android/jrdsettings/powersaver/JrdPowerManger;->getPowerSaveMode()I
    invoke-static {v2}, Lcom/android/jrdsettings/powersaver/JrdPowerManger;->access$000(Lcom/android/jrdsettings/powersaver/JrdPowerManger;)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/jrdsettings/powersaver/JrdSwitchPreference;->setChecked(Z)V

    .line 138
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
