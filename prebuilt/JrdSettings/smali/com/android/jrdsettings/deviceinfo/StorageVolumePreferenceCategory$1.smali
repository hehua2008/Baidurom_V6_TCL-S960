.class Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$1;
.super Landroid/os/Handler;
.source "StorageVolumePreferenceCategory.java"


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
    .line 117
    iput-object p1, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 120
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 122
    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [J

    move-object v1, v2

    check-cast v1, [J

    .line 123
    .local v1, size:[J
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    const/4 v3, 0x0

    aget-wide v3, v1, v3

    const/4 v5, 0x1

    aget-wide v5, v1, v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updateApproximate(JJ)V

    goto :goto_0

    .line 126
    .end local v1           #size:[J
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 127
    .local v0, details:Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;
    iget-object v2, p0, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory$1;->this$0:Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;

    invoke-virtual {v2, v0}, Lcom/android/jrdsettings/deviceinfo/StorageVolumePreferenceCategory;->updateDetails(Lcom/android/jrdsettings/deviceinfo/StorageMeasurement$MeasurementDetails;)V

    goto :goto_0

    .line 120
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
