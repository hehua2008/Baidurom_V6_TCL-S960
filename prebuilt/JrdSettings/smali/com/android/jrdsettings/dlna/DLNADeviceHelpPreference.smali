.class public final Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;
.super Landroid/preference/Preference;
.source "DLNADeviceHelpPreference.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DLNADevicePreference"

.field private static sDimAlpha:I


# instance fields
.field private group:Landroid/widget/RadioGroup;

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/high16 v0, -0x8000

    sput v0, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljrdcom/dlnaservice/DLNAManager;)V
    .locals 4
    .parameter "context"
    .parameter "manager"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 78
    iput-object p1, p0, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->mContext:Landroid/content/Context;

    .line 79
    sget v1, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 80
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 83
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->sDimAlpha:I

    .line 86
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p0}, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->onDeviceAttributesChanged()V

    .line 88
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "parent"

    .prologue
    .line 92
    const-string v1, "DLNADevicePreference"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v1, p0, Lcom/android/jrdsettings/dlna/DLNADeviceHelpPreference;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04008d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 122
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyHierarchyChanged()V

    .line 127
    return-void
.end method
