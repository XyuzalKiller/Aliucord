.class public final Lf0/d;
.super Ljava/lang/Object;
.source "CacheControl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/d$a;
    }
.end annotation


# static fields
.field public static final a:Lf0/d$a;


# instance fields
.field public final b:Z

.field public final c:Z

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:Z

.field public final l:Z

.field public final m:Z

.field public n:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf0/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf0/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lf0/d;->a:Lf0/d$a;

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v1, "timeUnit"

    .line 2
    invoke-static {v0, v1}, Ld0/z/d/m;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7fffffff

    int-to-long v1, v1

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    return-void
.end method

.method public constructor <init>(ZZIIZZZIIZZZLjava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lf0/d;->b:Z

    iput-boolean p2, p0, Lf0/d;->c:Z

    iput p3, p0, Lf0/d;->d:I

    iput p4, p0, Lf0/d;->e:I

    iput-boolean p5, p0, Lf0/d;->f:Z

    iput-boolean p6, p0, Lf0/d;->g:Z

    iput-boolean p7, p0, Lf0/d;->h:Z

    iput p8, p0, Lf0/d;->i:I

    iput p9, p0, Lf0/d;->j:I

    iput-boolean p10, p0, Lf0/d;->k:Z

    iput-boolean p11, p0, Lf0/d;->l:Z

    iput-boolean p12, p0, Lf0/d;->m:Z

    iput-object p13, p0, Lf0/d;->n:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lf0/d;->n:Ljava/lang/String;

    if-nez v0, :cond_be

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-boolean v1, p0, Lf0/d;->b:Z

    if-eqz v1, :cond_12

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    :cond_12
    iget-boolean v1, p0, Lf0/d;->c:Z

    if-eqz v1, :cond_1b

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :cond_1b
    iget v1, p0, Lf0/d;->d:I

    const-string v2, ", "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2f

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_2f
    iget v1, p0, Lf0/d;->e:I

    if-eq v1, v3, :cond_40

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_40
    iget-boolean v1, p0, Lf0/d;->f:Z

    if-eqz v1, :cond_49

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_49
    iget-boolean v1, p0, Lf0/d;->g:Z

    if-eqz v1, :cond_52

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :cond_52
    iget-boolean v1, p0, Lf0/d;->h:Z

    if-eqz v1, :cond_5b

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_5b
    iget v1, p0, Lf0/d;->i:I

    if-eq v1, v3, :cond_6c

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    :cond_6c
    iget v1, p0, Lf0/d;->j:I

    if-eq v1, v3, :cond_7d

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf0/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    :cond_7d
    iget-boolean v1, p0, Lf0/d;->k:Z

    if-eqz v1, :cond_86

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :cond_86
    iget-boolean v1, p0, Lf0/d;->l:Z

    if-eqz v1, :cond_8f

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_8f
    iget-boolean v1, p0, Lf0/d;->m:Z

    if-eqz v1, :cond_98

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_98
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a0

    const/4 v1, 0x1

    goto :goto_a1

    :cond_a0
    const/4 v1, 0x0

    :goto_a1
    if-eqz v1, :cond_a6

    const-string v0, ""

    return-object v0

    .line 16
    :cond_a6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ld0/z/d/m;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object v0, p0, Lf0/d;->n:Ljava/lang/String;

    :cond_be
    return-object v0
.end method
