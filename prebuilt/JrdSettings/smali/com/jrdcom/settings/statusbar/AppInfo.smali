.class public Lcom/jrdcom/settings/statusbar/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field firstInstallTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field isChecked:Z

.field packageName:Ljava/lang/String;

.field title:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/String;J)V
    .locals 0
    .parameter "icon"
    .parameter "title"
    .parameter "isChecked"
    .parameter "packageName"
    .parameter "firstInstallTime"

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object p2, p0, Lcom/jrdcom/settings/statusbar/AppInfo;->title:Ljava/lang/CharSequence;

    .line 12
    iput-boolean p3, p0, Lcom/jrdcom/settings/statusbar/AppInfo;->isChecked:Z

    .line 13
    iput-object p4, p0, Lcom/jrdcom/settings/statusbar/AppInfo;->packageName:Ljava/lang/String;

    .line 14
    iput-wide p5, p0, Lcom/jrdcom/settings/statusbar/AppInfo;->firstInstallTime:J

    .line 15
    return-void
.end method
