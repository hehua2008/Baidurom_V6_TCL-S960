.class Lcom/android/jrdsettings/powersaver/JrdAppPicker$AppViewHolder;
.super Ljava/lang/Object;
.source "JrdAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/jrdsettings/powersaver/JrdAppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public appSize:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;

.field public switchbox:Landroid/widget/Switch;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
