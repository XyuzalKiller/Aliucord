.class public Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeasureResult"
.end annotation


# instance fields
.field public baseline:I

.field public bottom:I

.field public left:I

.field public orientation:I

.field public right:I

.field public final synthetic this$0:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

.field public top:I

.field public widgetRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/LinearSystem;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->this$0:Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->widgetRef:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->left:I

    .line 4
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->top:I

    .line 5
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->right:I

    .line 6
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->bottom:I

    .line 7
    iget-object p1, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBaseline:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p3, p1}, Landroidx/constraintlayout/solver/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->baseline:I

    .line 8
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->orientation:I

    return-void
.end method


# virtual methods
.method public apply()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->widgetRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v1, :cond_1a

    .line 2
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->left:I

    iget v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->top:I

    iget v4, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->right:I

    iget v5, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->bottom:I

    iget v6, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->baseline:I

    iget v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/WidgetGroup$MeasureResult;->orientation:I

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setFinalFrame(IIIIII)V

    :cond_1a
    return-void
.end method
