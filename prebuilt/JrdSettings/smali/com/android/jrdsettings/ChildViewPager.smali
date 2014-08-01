.class public Lcom/android/jrdsettings/ChildViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "ChildViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;
    }
.end annotation


# instance fields
.field curP:Landroid/graphics/PointF;

.field downP:Landroid/graphics/PointF;

.field onSingleTouchListener:Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    .line 20
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/support/v4/view/ViewPager;->onDetachedFromWindow()V

    .line 98
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTouch()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/jrdsettings/ChildViewPager;->onSingleTouchListener:Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/jrdsettings/ChildViewPager;->onSingleTouchListener:Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;

    invoke-interface {v0}, Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;->onSingleTouch()V

    .line 84
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 37
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 38
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    .line 42
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->x:F

    .line 43
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, v4, Landroid/graphics/PointF;->y:F

    .line 45
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 49
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    float-to-int v1, v4

    .line 50
    .local v1, x:I
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 51
    .local v2, y:I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 52
    .local v0, count:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_4

    .line 53
    if-lez v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-nez v4, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 65
    .end local v0           #count:I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 66
    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/jrdsettings/ChildViewPager;->downP:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/android/jrdsettings/ChildViewPager;->curP:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    .line 69
    invoke-virtual {p0}, Lcom/android/jrdsettings/ChildViewPager;->onSingleTouch()V

    .line 77
    :goto_1
    return v3

    .line 55
    .restart local v0       #count:I
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_2
    if-gez v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    if-ne v4, v0, :cond_3

    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 58
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 60
    :cond_4
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 73
    .end local v0           #count:I
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 77
    :cond_6
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public setOnSingleTouchListener(Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;)V
    .locals 0
    .parameter "onSingleTouchListener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/jrdsettings/ChildViewPager;->onSingleTouchListener:Lcom/android/jrdsettings/ChildViewPager$OnSingleTouchListener;

    .line 89
    return-void
.end method
