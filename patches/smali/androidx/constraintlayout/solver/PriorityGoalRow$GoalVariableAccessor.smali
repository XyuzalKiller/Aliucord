.class public Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field public row:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field public final synthetic this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

.field public variable:Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/PriorityGoalRow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/solver/PriorityGoalRow;

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0x9

    if-ge v0, v1, :cond_29

    .line 1
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 2
    aget v1, v1, v0

    .line 3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_26

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_29
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    const v1, 0x38d1b717    # 1.0E-4f

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    :goto_f
    if-ge v0, v2, :cond_35

    .line 2
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v7, v6, v0

    iget-object v8, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v8, v8, v0

    mul-float v8, v8, p2

    add-float/2addr v8, v7

    aput v8, v6, v0

    .line 3
    aget v6, v6, v0

    .line 4
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_31

    .line 5
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v6, v0

    goto :goto_32

    :cond_31
    const/4 v4, 0x0

    :goto_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_35
    if-eqz v4, :cond_3e

    .line 6
    iget-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/PriorityGoalRow;

    iget-object p2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    # invokes: Landroidx/constraintlayout/solver/PriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    invoke-static {p1, p2}, Landroidx/constraintlayout/solver/PriorityGoalRow;->access$000(Landroidx/constraintlayout/solver/PriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V

    :cond_3e
    return v5

    :cond_3f
    :goto_3f
    if-ge v5, v2, :cond_64

    .line 7
    iget-object v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v0, v0, v5

    cmpl-float v6, v0, v3

    if-eqz v6, :cond_5b

    mul-float v0, v0, p2

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_54

    const/4 v0, 0x0

    .line 9
    :cond_54
    iget-object v6, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v0, v6, v5

    goto :goto_61

    .line 10
    :cond_5b
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v0, v5

    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_3f

    :cond_64
    return v4
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Landroidx/constraintlayout/solver/SolverVariable;

    .line 2
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget p1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public init(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    return-void
.end method

.method public final isNegative()Z
    .locals 5

    const/16 v0, 0x8

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1a

    .line 1
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_11

    return v1

    :cond_11
    cmpg-float v1, v2, v3

    if-gez v1, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1a
    return v1
.end method

.method public final isNull()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/16 v2, 0x9

    if-ge v1, v2, :cond_15

    .line 1
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_12

    return v0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 5

    const/16 v0, 0x8

    :goto_2
    const/4 v1, 0x0

    if-ltz v0, :cond_1c

    .line 1
    iget-object v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 2
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    cmpl-float v4, v3, v2

    if-nez v4, :cond_16

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_16
    cmpg-float p1, v3, v2

    if-gez p1, :cond_1c

    const/4 p1, 0x1

    return p1

    :cond_1c
    return v1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    const-string v1, "[ "

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    :goto_7
    const/16 v2, 0x9

    if-ge v0, v2, :cond_24

    .line 2
    invoke-static {v1}, Lb/d/b/a/a;->U(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_24
    const-string v0, "] "

    .line 3
    invoke-static {v1, v0}, Lb/d/b/a/a;->X(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
