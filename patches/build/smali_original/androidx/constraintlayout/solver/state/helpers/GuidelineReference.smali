.class public Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;
.super Ljava/lang/Object;
.source "GuidelineReference.java"

# interfaces
.implements Landroidx/constraintlayout/solver/state/Reference;


# instance fields
.field private key:Ljava/lang/Object;

.field private mEnd:I

.field private mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

.field private mOrientation:I

.field private mPercent:F

.field private mStart:I

.field public final mState:Landroidx/constraintlayout/solver/state/State;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/state/State;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    .line 5
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/solver/state/State;

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mOrientation:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 2
    iget v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 3
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_23

    .line 4
    :cond_12
    iget v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    if-eq v0, v1, :cond_1c

    .line 5
    iget-object v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    goto :goto_23

    .line 6
    :cond_1c
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    :goto_23
    return-void
.end method

.method public end(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    return-void
.end method

.method public getConstraintWidget()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 3
    :cond_b
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mOrientation:I

    return v0
.end method

.method public percent(F)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    .line 2
    iput v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    .line 3
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    return-void
.end method

.method public setConstraintWidget(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v0, :cond_9

    .line 2
    check-cast p1, Landroidx/constraintlayout/solver/widgets/Guideline;

    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    goto :goto_c

    :cond_9
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mGuidelineWidget:Landroidx/constraintlayout/solver/widgets/Guideline;

    :goto_c
    return-void
.end method

.method public setKey(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->key:Ljava/lang/Object;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mOrientation:I

    return-void
.end method

.method public start(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mState:Landroidx/constraintlayout/solver/state/State;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mStart:I

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mEnd:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Landroidx/constraintlayout/solver/state/helpers/GuidelineReference;->mPercent:F

    return-void
.end method
