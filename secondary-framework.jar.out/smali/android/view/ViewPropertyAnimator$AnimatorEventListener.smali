.class Landroid/view/ViewPropertyAnimator$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewPropertyAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatorEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewPropertyAnimator;


# direct methods
.method private constructor <init>(Landroid/view/ViewPropertyAnimator;)V
    .locals 0
    .parameter

    .prologue
    .line 965
    iput-object p1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewPropertyAnimator;Landroid/view/ViewPropertyAnimator$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 965
    invoke-direct {p0, p1}, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;-><init>(Landroid/view/ViewPropertyAnimator;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 990
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 991
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 993
    :cond_0
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 994
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 1007
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1008
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1009
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1011
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1012
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1013
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_1

    .line 1014
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1016
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnEndMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$700(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1019
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1020
    .restart local v0       #r:Ljava/lang/Runnable;
    if-eqz v0, :cond_3

    .line 1021
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1023
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorCleanupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$800(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_4
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$900(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1026
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 1000
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v0}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 1003
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 969
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 970
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 971
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 972
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 974
    :cond_0
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorSetupMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$400(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_1
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 977
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 978
    .restart local v0       #r:Ljava/lang/Runnable;
    if-eqz v0, :cond_2

    .line 979
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 981
    :cond_2
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorOnStartMap:Ljava/util/HashMap;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$500(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 983
    .end local v0           #r:Ljava/lang/Runnable;
    :cond_3
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 984
    iget-object v1, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mListener:Landroid/animation/Animator$AnimatorListener;
    invoke-static {v1}, Landroid/view/ViewPropertyAnimator;->access$600(Landroid/view/ViewPropertyAnimator;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 986
    :cond_4
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14
    .parameter "animation"

    .prologue
    .line 1038
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mAnimatorMap:Ljava/util/HashMap;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$900(Landroid/view/ViewPropertyAnimator;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;

    .line 1039
    .local v5, propertyBundle:Landroid/view/ViewPropertyAnimator$PropertyBundle;
    if-nez v5, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1043
    :cond_0
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    if-eqz v11, :cond_3

    const/4 v7, 0x1

    .line 1050
    .local v7, useDisplayListProperties:Z
    :goto_1
    const/4 v0, 0x0

    .line 1053
    .local v0, alphaHandled:Z
    const/4 v4, 0x0

    .line 1056
    .local v4, jrdBlurHandled:Z
    if-nez v7, :cond_1

    .line 1057
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->invalidateParentCaches()V

    .line 1059
    :cond_1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v2

    .line 1060
    .local v2, fraction:F
    iget v6, v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mPropertyMask:I

    .line 1061
    .local v6, propertyMask:I
    and-int/lit16 v11, v6, 0x1ff

    if-eqz v11, :cond_2

    .line 1062
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 1064
    :cond_2
    iget-object v9, v5, Landroid/view/ViewPropertyAnimator$PropertyBundle;->mNameValuesHolder:Ljava/util/ArrayList;

    .line 1065
    .local v9, valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    if-eqz v9, :cond_9

    .line 1066
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1067
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_9

    .line 1068
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;

    .line 1069
    .local v10, values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    iget v11, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mFromValue:F

    iget v12, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mDeltaValue:F

    mul-float/2addr v12, v2

    add-float v8, v11, v12

    .line 1070
    .local v8, value:F
    iget v11, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/16 v12, 0x200

    if-ne v11, v12, :cond_4

    .line 1071
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->setAlphaNoInvalidation(F)Z

    move-result v0

    .line 1067
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1043
    .end local v0           #alphaHandled:Z
    .end local v1           #count:I
    .end local v2           #fraction:F
    .end local v3           #i:I
    .end local v4           #jrdBlurHandled:Z
    .end local v6           #propertyMask:I
    .end local v7           #useDisplayListProperties:Z
    .end local v8           #value:F
    .end local v9           #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    .end local v10           #values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 1073
    .restart local v0       #alphaHandled:Z
    .restart local v1       #count:I
    .restart local v2       #fraction:F
    .restart local v3       #i:I
    .restart local v4       #jrdBlurHandled:Z
    .restart local v6       #propertyMask:I
    .restart local v7       #useDisplayListProperties:Z
    .restart local v8       #value:F
    .restart local v9       #valueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/ViewPropertyAnimator$NameValuesHolder;>;"
    .restart local v10       #values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_4
    iget v11, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/high16 v12, 0x4000

    if-ne v11, v12, :cond_5

    .line 1074
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->setBlurAmount_noInvalidation(F)Z

    move-result v11

    or-int/2addr v4, v11

    goto :goto_3

    .line 1075
    :cond_5
    iget v11, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/high16 v12, 0x2000

    if-ne v11, v12, :cond_6

    .line 1076
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->setBlurDimCoef_noInvalidation(F)Z

    move-result v11

    or-int/2addr v4, v11

    goto :goto_3

    .line 1077
    :cond_6
    iget v11, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/high16 v12, 0x1000

    if-ne v11, v12, :cond_7

    .line 1078
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->setBlurOverlayCoef_noInvalidation(F)Z

    move-result v11

    or-int/2addr v4, v11

    goto :goto_3

    .line 1079
    :cond_7
    iget v11, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    const/high16 v12, 0x800

    if-ne v11, v12, :cond_8

    .line 1080
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/view/View;->setBlurAutoCorrectionCoef_noInvalidation(F)Z

    move-result v11

    or-int/2addr v4, v11

    goto :goto_3

    .line 1084
    :cond_8
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    iget v12, v10, Landroid/view/ViewPropertyAnimator$NameValuesHolder;->mNameConstant:I

    #calls: Landroid/view/ViewPropertyAnimator;->setValue(IF)V
    invoke-static {v11, v12, v8}, Landroid/view/ViewPropertyAnimator;->access$1000(Landroid/view/ViewPropertyAnimator;IF)V

    goto :goto_3

    .line 1088
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v8           #value:F
    .end local v10           #values:Landroid/view/ViewPropertyAnimator$NameValuesHolder;
    :cond_9
    and-int/lit16 v11, v6, 0x1ff

    if-eqz v11, :cond_a

    .line 1089
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    iget-object v11, v11, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    const/4 v12, 0x1

    iput-boolean v12, v11, Landroid/view/View$TransformationInfo;->mMatrixDirty:Z

    .line 1090
    if-nez v7, :cond_a

    .line 1091
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 1096
    :cond_a
    if-nez v0, :cond_b

    if-eqz v4, :cond_c

    .line 1097
    :cond_b
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->invalidate(Z)V

    goto/16 :goto_0

    .line 1099
    :cond_c
    iget-object v11, p0, Landroid/view/ViewPropertyAnimator$AnimatorEventListener;->this$0:Landroid/view/ViewPropertyAnimator;

    #getter for: Landroid/view/ViewPropertyAnimator;->mView:Landroid/view/View;
    invoke-static {v11}, Landroid/view/ViewPropertyAnimator;->access$200(Landroid/view/ViewPropertyAnimator;)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    goto/16 :goto_0
.end method
