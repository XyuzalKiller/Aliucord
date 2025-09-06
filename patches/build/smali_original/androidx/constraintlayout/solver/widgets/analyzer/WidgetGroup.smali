.class public Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static count:I


# instance fields
.field public authoritative:Z

.field public id:I

.field private moveTo:I

.field public orientation:I

.field public results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field public widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->authoritative:Z

    .line 5
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->orientation:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    .line 7
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo:I

    .line 8
    sget v0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->count:I

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    .line 9
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->orientation:I

    return-void
.end method

.method private contains(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getOrientationString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->orientation:I

    if-nez v0, :cond_7

    const-string v0, "Horizontal"

    return-object v0

    :cond_7
    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const-string v0, "Vertical"

    return-object v0

    :cond_d
    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    const-string v0, "Both"

    return-object v0

    :cond_13
    const-string v0, "Unknown"

    return-object v0
.end method

.method private measureWrap(ILandroidx/constraintlayout/solver/widgets/ConstraintWidget;)I
    .locals 2

    .line 1
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

    .line 2
    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_13

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v0, v1, :cond_13

    sget-object v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v0, v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p1, -0x1

    return p1

    :cond_13
    :goto_13
    if-nez p1, :cond_1a

    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    goto :goto_1e

    .line 4
    :cond_1a
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    :goto_1e
    return p1
.end method

.method private solverMeasure(Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/ArrayList;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;I)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    .line 3
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V

    const/4 v2, 0x0

    .line 4
    :goto_14
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_26

    .line 5
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 6
    invoke-virtual {v3, p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_26
    if-nez p3, :cond_2f

    .line 7
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v2, :cond_2f

    .line 8
    invoke-static {v1, p1, p2, v0}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/ArrayList;I)V

    :cond_2f
    const/4 v2, 0x1

    if-ne p3, v2, :cond_39

    .line 9
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v3, :cond_39

    .line 10
    invoke-static {v1, p1, p2, v2}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/ArrayList;I)V

    .line 11
    :cond_39
    :try_start_39
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/LinearSystem;->minimize()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception v2

    .line 12
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 13
    :goto_41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    .line 14
    :goto_48
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_61

    .line 15
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 16
    new-instance v3, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;

    invoke-direct {v3, p0, v2, p1, p3}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;-><init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 17
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_61
    if-nez p3, :cond_74

    .line 18
    iget-object p2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p2

    .line 19
    iget-object p3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p3

    .line 20
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    :goto_72
    sub-int/2addr p3, p2

    return p3

    .line 21
    :cond_74
    iget-object p2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p2

    .line 22
    iget-object p3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p3

    .line 23
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    goto :goto_72
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public apply()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    return-void

    .line 2
    :cond_5
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->authoritative:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v0, 0x0

    .line 3
    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;

    .line 5
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->apply()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_21
    return-void
.end method

.method public cleanup(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_28

    if-lez v0, :cond_28

    const/4 v1, 0x0

    .line 3
    :goto_e
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    .line 5
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo:I

    iget v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    if-ne v3, v4, :cond_25

    .line 6
    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->orientation:I

    invoke-virtual {p0, v3, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_28
    if-nez v0, :cond_2d

    .line 7
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2d
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->orientation:I

    return v0
.end method

.method public intersectWith(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 2
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 3
    invoke-direct {p1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->contains(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method

.method public isAuthoritative()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->authoritative:Z

    return v0
.end method

.method public measureWrap(Landroidx/constraintlayout/solver/LinearSystem;I)I
    .locals 1

    .line 5
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_a
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->solverMeasure(Landroidx/constraintlayout/solver/LinearSystem;Ljava/util/ArrayList;I)I

    move-result p1

    return p1
.end method

.method public moveTo(ILandroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 2
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)Z

    if-nez p1, :cond_1e

    .line 3
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalGroup:I

    goto :goto_6

    .line 4
    :cond_1e
    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getId()I

    move-result v2

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalGroup:I

    goto :goto_6

    .line 5
    :cond_25
    iget p1, p2, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->moveTo:I

    return-void
.end method

.method public setAuthoritative(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->authoritative:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->orientation:I

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->getOrientationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->id:I

    const-string v2, "] <"

    invoke-static {v0, v1, v2}, Lb/d/b/a/a;->B(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const-string v3, " "

    .line 3
    invoke-static {v0, v3}, Lb/d/b/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_3d
    const-string v1, " >"

    .line 4
    invoke-static {v0, v1}, Lb/d/b/a/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
