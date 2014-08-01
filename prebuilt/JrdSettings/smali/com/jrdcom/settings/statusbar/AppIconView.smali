.class public Lcom/jrdcom/settings/statusbar/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jrdcom/settings/statusbar/AppIconView$PressedCallback;
    }
.end annotation


# static fields
.field private static final PRESS_ALPHA:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "PagedViewIcon"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawableStateClicked:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconSize:F

.field private mPressedCallback:Lcom/jrdcom/settings/statusbar/AppIconView$PressedCallback;

.field private mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jrdcom/settings/statusbar/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jrdcom/settings/statusbar/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    .line 47
    iput-object p1, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/jrdcom/settings/statusbar/AppIconView;->init_view()V

    .line 49
    return-void
.end method

.method private init_view()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mTextSize:F

    .line 53
    iget v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mTextSize:F

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mIconSize:F

    .line 55
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setTextAlignment(I)V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 58
    return-void
.end method


# virtual methods
.method public applyFromApplicationInfo(Lcom/jrdcom/settings/statusbar/AppInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 61
    iget-object v0, p1, Lcom/jrdcom/settings/statusbar/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-boolean v0, p1, Lcom/jrdcom/settings/statusbar/AppInfo;->isChecked:Z

    iput-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    .line 63
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mIconSize:F

    float-to-int v1, v1

    iget v2, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mIconSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    iget-object v0, p1, Lcom/jrdcom/settings/statusbar/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/jrdcom/settings/statusbar/AppIconView$1;

    invoke-direct {v0, p0}, Lcom/jrdcom/settings/statusbar/AppIconView$1;-><init>(Lcom/jrdcom/settings/statusbar/AppIconView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 98
    iget-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    if-eqz v0, :cond_1

    .line 99
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 100
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mPressedCallback:Lcom/jrdcom/settings/statusbar/AppIconView$PressedCallback;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mPressedCallback:Lcom/jrdcom/settings/statusbar/AppIconView$PressedCallback;

    invoke-interface {v0, p0}, Lcom/jrdcom/settings/statusbar/AppIconView$PressedCallback;->iconPressed(Lcom/jrdcom/settings/statusbar/AppIconView;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    if-nez v0, :cond_0

    .line 104
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public ismDrawableStateClicked()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    return v0
.end method

.method public resetDrawableState()V
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    .line 85
    new-instance v0, Lcom/jrdcom/settings/statusbar/AppIconView$2;

    invoke-direct {v0, p0}, Lcom/jrdcom/settings/statusbar/AppIconView$2;-><init>(Lcom/jrdcom/settings/statusbar/AppIconView;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 91
    return-void

    .line 84
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setmDrawableStateClicked(Z)V
    .locals 0
    .parameter "mDrawableStateClicked"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/jrdcom/settings/statusbar/AppIconView;->mDrawableStateClicked:Z

    .line 81
    return-void
.end method
