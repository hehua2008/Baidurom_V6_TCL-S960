.class Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context1"
    .parameter "intent"

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary$1;->this$0:Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;

    #calls: Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->setBatteryPercenVisibility()V
    invoke-static {v0}, Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/jrdsettings/fuelgauge/PowerUsageSummary;)V

    .line 152
    return-void
.end method
