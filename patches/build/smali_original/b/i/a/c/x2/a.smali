.class public abstract Lb/i/a/c/x2/a;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/a/c/x2/a$a;,
        Lb/i/a/c/x2/a$e;,
        Lb/i/a/c/x2/a$c;,
        Lb/i/a/c/x2/a$d;,
        Lb/i/a/c/x2/a$b;,
        Lb/i/a/c/x2/a$f;
    }
.end annotation


# instance fields
.field public final a:Lb/i/a/c/x2/a$a;

.field public final b:Lb/i/a/c/x2/a$f;

.field public c:Lb/i/a/c/x2/a$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final d:I


# direct methods
.method public constructor <init>(Lb/i/a/c/x2/a$d;Lb/i/a/c/x2/a$f;JJJJJJI)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v1, p2

    .line 2
    iput-object v1, v0, Lb/i/a/c/x2/a;->b:Lb/i/a/c/x2/a$f;

    move/from16 v1, p15

    .line 3
    iput v1, v0, Lb/i/a/c/x2/a;->d:I

    .line 4
    new-instance v15, Lb/i/a/c/x2/a$a;

    move-object v1, v15

    move-object/from16 v2, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move-wide/from16 v13, p13

    invoke-direct/range {v1 .. v14}, Lb/i/a/c/x2/a$a;-><init>(Lb/i/a/c/x2/a$d;JJJJJJ)V

    iput-object v15, v0, Lb/i/a/c/x2/a;->a:Lb/i/a/c/x2/a$a;

    return-void
.end method


# virtual methods
.method public a(Lb/i/a/c/x2/i;Lb/i/a/c/x2/s;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    :goto_6
    iget-object v3, v0, Lb/i/a/c/x2/a;->c:Lb/i/a/c/x2/a$c;

    .line 2
    invoke-static {v3}, Lb/c/a/a0/d;->H(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v4, v3, Lb/i/a/c/x2/a$c;->f:J

    .line 4
    iget-wide v6, v3, Lb/i/a/c/x2/a$c;->g:J

    .line 5
    iget-wide v8, v3, Lb/i/a/c/x2/a$c;->h:J

    sub-long/2addr v6, v4

    .line 6
    iget v10, v0, Lb/i/a/c/x2/a;->d:I

    int-to-long v10, v10

    const/4 v12, 0x0

    cmp-long v13, v6, v10

    if-gtz v13, :cond_22

    .line 7
    invoke-virtual {v0, v12, v4, v5}, Lb/i/a/c/x2/a;->c(ZJ)V

    .line 8
    invoke-virtual {v0, v1, v4, v5, v2}, Lb/i/a/c/x2/a;->d(Lb/i/a/c/x2/i;JLb/i/a/c/x2/s;)I

    move-result v1

    return v1

    .line 9
    :cond_22
    invoke-virtual {v0, v1, v8, v9}, Lb/i/a/c/x2/a;->f(Lb/i/a/c/x2/i;J)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 10
    invoke-virtual {v0, v1, v8, v9, v2}, Lb/i/a/c/x2/a;->d(Lb/i/a/c/x2/i;JLb/i/a/c/x2/s;)I

    move-result v1

    return v1

    .line 11
    :cond_2d
    invoke-interface/range {p1 .. p1}, Lb/i/a/c/x2/i;->k()V

    .line 12
    iget-object v4, v0, Lb/i/a/c/x2/a;->b:Lb/i/a/c/x2/a$f;

    .line 13
    iget-wide v5, v3, Lb/i/a/c/x2/a$c;->b:J

    .line 14
    invoke-interface {v4, v1, v5, v6}, Lb/i/a/c/x2/a$f;->b(Lb/i/a/c/x2/i;J)Lb/i/a/c/x2/a$e;

    move-result-object v4

    .line 15
    iget v5, v4, Lb/i/a/c/x2/a$e;->b:I

    const/4 v6, -0x3

    if-eq v5, v6, :cond_90

    const/4 v6, -0x2

    if-eq v5, v6, :cond_76

    const/4 v6, -0x1

    if-eq v5, v6, :cond_5f

    if-nez v5, :cond_57

    .line 16
    iget-wide v5, v4, Lb/i/a/c/x2/a$e;->d:J

    .line 17
    invoke-virtual {v0, v1, v5, v6}, Lb/i/a/c/x2/a;->f(Lb/i/a/c/x2/i;J)Z

    const/4 v3, 0x1

    .line 18
    iget-wide v5, v4, Lb/i/a/c/x2/a$e;->d:J

    .line 19
    invoke-virtual {v0, v3, v5, v6}, Lb/i/a/c/x2/a;->c(ZJ)V

    .line 20
    iget-wide v3, v4, Lb/i/a/c/x2/a$e;->d:J

    .line 21
    invoke-virtual {v0, v1, v3, v4, v2}, Lb/i/a/c/x2/a;->d(Lb/i/a/c/x2/i;JLb/i/a/c/x2/s;)I

    move-result v1

    return v1

    .line 22
    :cond_57
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Invalid case"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_5f
    iget-wide v8, v4, Lb/i/a/c/x2/a$e;->c:J

    .line 24
    iget-wide v12, v4, Lb/i/a/c/x2/a$e;->d:J

    .line 25
    iput-wide v8, v3, Lb/i/a/c/x2/a$c;->e:J

    .line 26
    iput-wide v12, v3, Lb/i/a/c/x2/a$c;->g:J

    .line 27
    iget-wide v4, v3, Lb/i/a/c/x2/a$c;->b:J

    iget-wide v6, v3, Lb/i/a/c/x2/a$c;->d:J

    iget-wide v10, v3, Lb/i/a/c/x2/a$c;->f:J

    iget-wide v14, v3, Lb/i/a/c/x2/a$c;->c:J

    .line 28
    invoke-static/range {v4 .. v15}, Lb/i/a/c/x2/a$c;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lb/i/a/c/x2/a$c;->h:J

    goto :goto_6

    .line 29
    :cond_76
    iget-wide v8, v4, Lb/i/a/c/x2/a$e;->c:J

    .line 30
    iget-wide v12, v4, Lb/i/a/c/x2/a$e;->d:J

    .line 31
    iput-wide v8, v3, Lb/i/a/c/x2/a$c;->d:J

    .line 32
    iput-wide v12, v3, Lb/i/a/c/x2/a$c;->f:J

    .line 33
    iget-wide v6, v3, Lb/i/a/c/x2/a$c;->b:J

    iget-wide v10, v3, Lb/i/a/c/x2/a$c;->e:J

    iget-wide v14, v3, Lb/i/a/c/x2/a$c;->g:J

    iget-wide v4, v3, Lb/i/a/c/x2/a$c;->c:J

    move-wide/from16 v16, v4

    .line 34
    invoke-static/range {v6 .. v17}, Lb/i/a/c/x2/a$c;->a(JJJJJJ)J

    move-result-wide v4

    iput-wide v4, v3, Lb/i/a/c/x2/a$c;->h:J

    goto/16 :goto_6

    .line 35
    :cond_90
    invoke-virtual {v0, v12, v8, v9}, Lb/i/a/c/x2/a;->c(ZJ)V

    .line 36
    invoke-virtual {v0, v1, v8, v9, v2}, Lb/i/a/c/x2/a;->d(Lb/i/a/c/x2/i;JLb/i/a/c/x2/s;)I

    move-result v1

    return v1
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/i/a/c/x2/a;->c:Lb/i/a/c/x2/a$c;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public final c(ZJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lb/i/a/c/x2/a;->c:Lb/i/a/c/x2/a$c;

    .line 2
    iget-object p1, p0, Lb/i/a/c/x2/a;->b:Lb/i/a/c/x2/a$f;

    invoke-interface {p1}, Lb/i/a/c/x2/a$f;->a()V

    return-void
.end method

.method public final d(Lb/i/a/c/x2/i;JLb/i/a/c/x2/s;)I
    .locals 2

    .line 1
    invoke-interface {p1}, Lb/i/a/c/x2/i;->getPosition()J

    move-result-wide v0

    cmp-long p1, p2, v0

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_a
    iput-wide p2, p4, Lb/i/a/c/x2/s;->a:J

    const/4 p1, 0x1

    return p1
.end method

.method public final e(J)V
    .locals 19

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    .line 1
    iget-object v1, v0, Lb/i/a/c/x2/a;->c:Lb/i/a/c/x2/a$c;

    if-eqz v1, :cond_f

    .line 2
    iget-wide v4, v1, Lb/i/a/c/x2/a$c;->a:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_f

    return-void

    .line 3
    :cond_f
    new-instance v14, Lb/i/a/c/x2/a$c;

    iget-object v1, v0, Lb/i/a/c/x2/a;->a:Lb/i/a/c/x2/a$a;

    .line 4
    iget-object v1, v1, Lb/i/a/c/x2/a$a;->a:Lb/i/a/c/x2/a$d;

    invoke-interface {v1, v2, v3}, Lb/i/a/c/x2/a$d;->a(J)J

    move-result-wide v4

    .line 5
    iget-object v1, v0, Lb/i/a/c/x2/a;->a:Lb/i/a/c/x2/a$a;

    .line 6
    iget-wide v6, v1, Lb/i/a/c/x2/a$a;->c:J

    .line 7
    iget-wide v8, v1, Lb/i/a/c/x2/a$a;->d:J

    .line 8
    iget-wide v10, v1, Lb/i/a/c/x2/a$a;->e:J

    .line 9
    iget-wide v12, v1, Lb/i/a/c/x2/a$a;->f:J

    move-wide v15, v12

    .line 10
    iget-wide v12, v1, Lb/i/a/c/x2/a$a;->g:J

    move-object v1, v14

    move-wide/from16 v2, p1

    move-wide/from16 v17, v12

    move-wide v12, v15

    move-object v0, v14

    move-wide/from16 v14, v17

    .line 11
    invoke-direct/range {v1 .. v15}, Lb/i/a/c/x2/a$c;-><init>(JJJJJJJ)V

    move-object v1, v0

    move-object/from16 v0, p0

    .line 12
    iput-object v1, v0, Lb/i/a/c/x2/a;->c:Lb/i/a/c/x2/a$c;

    return-void
.end method

.method public final f(Lb/i/a/c/x2/i;J)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lb/i/a/c/x2/i;->getPosition()J

    move-result-wide v0

    sub-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_18

    const-wide/32 v0, 0x40000

    cmp-long v2, p2, v0

    if-gtz v2, :cond_18

    long-to-int p3, p2

    .line 2
    invoke-interface {p1, p3}, Lb/i/a/c/x2/i;->l(I)V

    const/4 p1, 0x1

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method
