.class Lcom/android/jrdsettings/DisplaySettings$1;
.super Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/jrdsettings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/jrdsettings/DisplaySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/jrdsettings/DisplaySettings$1;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    invoke-direct {p0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/jrdsettings/DisplaySettings$1;->this$0:Lcom/android/jrdsettings/DisplaySettings;

    #calls: Lcom/android/jrdsettings/DisplaySettings;->updateAccelerometerRotationCheckbox()V
    invoke-static {v0}, Lcom/android/jrdsettings/DisplaySettings;->access$000(Lcom/android/jrdsettings/DisplaySettings;)V

    .line 214
    return-void
.end method
