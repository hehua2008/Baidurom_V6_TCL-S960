.class Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$2;
.super Ljava/lang/Object;
.source "StorageVolumePreferenceCategory.java"

# interfaces
.implements Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)V
    .locals 0
    .parameter

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateApproximate(Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;JJ)V
    .locals 4
    .parameter "meas"
    .parameter "totalSize"
    .parameter "availSize"

    .prologue
    const/4 v3, 0x1

    .line 701
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    aput-wide p2, v1, v2

    aput-wide p4, v1, v3

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 703
    return-void
.end method

.method public updateDetails(Lcom/android/jrdsettings/deviceinfo/StorageMeasurement;Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V
    .locals 2
    .parameter "meas"
    .parameter "details"

    .prologue
    .line 707
    iget-object v0, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$2;->this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    #getter for: Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->access$000(Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 708
    return-void
.end method
