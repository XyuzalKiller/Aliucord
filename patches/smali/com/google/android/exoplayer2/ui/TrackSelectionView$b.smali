.class public Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;
.super Ljava/lang/Object;
.source "TrackSelectionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/ui/TrackSelectionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic j:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/ui/TrackSelectionView;Lcom/google/android/exoplayer2/ui/TrackSelectionView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->j:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/TrackSelectionView$b;->j:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->l:Landroid/widget/CheckedTextView;

    if-ne p1, v1, :cond_f

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->t:Z

    .line 4
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    goto :goto_1b

    .line 5
    :cond_f
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->m:Landroid/widget/CheckedTextView;

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1f

    .line 6
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->t:Z

    .line 7
    iget-object p1, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 8
    :goto_1b
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->a()V

    return-void

    .line 9
    :cond_1f
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->t:Z

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    check-cast p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;

    .line 13
    iget p1, p1, Lcom/google/android/exoplayer2/ui/TrackSelectionView$c;->a:I

    .line 14
    iget-object v0, v0, Lcom/google/android/exoplayer2/ui/TrackSelectionView;->o:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/i/a/c/c3/h$f;

    const/4 p1, 0x0

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    throw p1
.end method
