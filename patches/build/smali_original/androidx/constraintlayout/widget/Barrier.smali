.class public Landroidx/constraintlayout/widget/Barrier;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "Barrier.java"


# static fields
.field public static final BOTTOM:I = 0x3

.field public static final END:I = 0x6

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final START:I = 0x5

.field public static final TOP:I = 0x2


# instance fields
.field private mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

.field private mIndicatedType:I

.field private mResolvedType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 2
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 4
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private updateType(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V
    .locals 3

    .line 1
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x5

    if-eqz p3, :cond_14

    .line 2
    iget p3, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p3, v2, :cond_f

    .line 3
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_1f

    :cond_f
    if-ne p3, v1, :cond_1f

    .line 4
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_1f

    .line 5
    :cond_14
    iget p3, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    if-ne p3, v2, :cond_1b

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    goto :goto_1f

    :cond_1b
    if-ne p3, v1, :cond_1f

    .line 7
    iput p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    .line 8
    :cond_1f
    :goto_1f
    instance-of p2, p1, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz p2, :cond_2a

    .line 9
    check-cast p1, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 10
    iget p2, p0, Landroidx/constraintlayout/widget/Barrier;->mResolvedType:I

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/widgets/Barrier;->setBarrierType(I)V

    :cond_2a
    return-void
.end method


# virtual methods
.method public allowsGoneWidget()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->allowsGoneWidget()Z

    move-result v0

    return v0
.end method

.method public getMargin()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;->getMargin()I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return v0
.end method

.method public init(Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Barrier;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz p1, :cond_50

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_4d

    .line 5
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 6
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierDirection:I

    if-ne v3, v4, :cond_2e

    .line 7
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    goto :goto_4a

    .line 8
    :cond_2e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierAllowsGoneWidgets:I

    if-ne v3, v4, :cond_3d

    .line 9
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    const/4 v5, 0x1

    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    goto :goto_4a

    .line 10
    :cond_3d
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_barrierMargin:I

    if-ne v3, v4, :cond_4a

    .line 11
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 12
    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 13
    :cond_4d
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    :cond_50
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintHelper;->mHelperWidget:Landroidx/constraintlayout/solver/widgets/Helper;

    .line 15
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    return-void
.end method

.method public loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/solver/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet$Constraint;",
            "Landroidx/constraintlayout/solver/widgets/HelperWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintHelper;->loadParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/solver/widgets/HelperWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 2
    instance-of p3, p2, Landroidx/constraintlayout/solver/widgets/Barrier;

    if-eqz p3, :cond_29

    .line 3
    move-object p3, p2

    check-cast p3, Landroidx/constraintlayout/solver/widgets/Barrier;

    .line 4
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 5
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result p2

    .line 6
    iget-object p4, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget p4, p4, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierDirection:I

    invoke-direct {p0, p3, p4, p2}, Landroidx/constraintlayout/widget/Barrier;->updateType(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    .line 7
    iget-object p2, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget-boolean p2, p2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierAllowsGoneWidgets:Z

    invoke-virtual {p3, p2}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    .line 8
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iget p1, p1, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mBarrierMargin:I

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    :cond_29
    return-void
.end method

.method public resolveRtl(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/Barrier;->updateType(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    return-void
.end method

.method public setAllowsGoneWidget(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Barrier;->setAllowsGoneWidget(Z)V

    return-void
.end method

.method public setDpMargin(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public setMargin(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->mBarrier:Landroidx/constraintlayout/solver/widgets/Barrier;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/Barrier;->setMargin(I)V

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/widget/Barrier;->mIndicatedType:I

    return-void
.end method
