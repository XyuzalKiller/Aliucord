.class public final Lb/i/c/u/o/a$b;
.super Lb/i/c/u/o/d$a;
.source "AutoValue_PersistedInstallationEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/c/u/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lb/i/c/u/o/c$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Long;

.field public f:Ljava/lang/Long;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/i/c/u/o/d$a;-><init>()V

    return-void
.end method

.method public constructor <init>(Lb/i/c/u/o/d;Lb/i/c/u/o/a$a;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lb/i/c/u/o/d$a;-><init>()V

    .line 3
    check-cast p1, Lb/i/c/u/o/a;

    .line 4
    iget-object p2, p1, Lb/i/c/u/o/a;->b:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lb/i/c/u/o/a$b;->a:Ljava/lang/String;

    .line 6
    iget-object p2, p1, Lb/i/c/u/o/a;->c:Lb/i/c/u/o/c$a;

    .line 7
    iput-object p2, p0, Lb/i/c/u/o/a$b;->b:Lb/i/c/u/o/c$a;

    .line 8
    iget-object p2, p1, Lb/i/c/u/o/a;->d:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lb/i/c/u/o/a$b;->c:Ljava/lang/String;

    .line 10
    iget-object p2, p1, Lb/i/c/u/o/a;->e:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lb/i/c/u/o/a$b;->d:Ljava/lang/String;

    .line 12
    iget-wide v0, p1, Lb/i/c/u/o/a;->f:J

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lb/i/c/u/o/a$b;->e:Ljava/lang/Long;

    .line 14
    iget-wide v0, p1, Lb/i/c/u/o/a;->g:J

    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lb/i/c/u/o/a$b;->f:Ljava/lang/Long;

    .line 16
    iget-object p1, p1, Lb/i/c/u/o/a;->h:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lb/i/c/u/o/a$b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lb/i/c/u/o/d;
    .locals 13

    .line 1
    iget-object v0, p0, Lb/i/c/u/o/a$b;->b:Lb/i/c/u/o/c$a;

    if-nez v0, :cond_7

    const-string v0, " registrationStatus"

    goto :goto_9

    :cond_7
    const-string v0, ""

    .line 2
    :goto_9
    iget-object v1, p0, Lb/i/c/u/o/a$b;->e:Ljava/lang/Long;

    if-nez v1, :cond_13

    const-string v1, " expiresInSecs"

    .line 3
    invoke-static {v0, v1}, Lb/d/b/a/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    :cond_13
    iget-object v1, p0, Lb/i/c/u/o/a$b;->f:Ljava/lang/Long;

    if-nez v1, :cond_1d

    const-string v1, " tokenCreationEpochInSecs"

    .line 5
    invoke-static {v0, v1}, Lb/d/b/a/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 7
    new-instance v0, Lb/i/c/u/o/a;

    iget-object v3, p0, Lb/i/c/u/o/a$b;->a:Ljava/lang/String;

    iget-object v4, p0, Lb/i/c/u/o/a$b;->b:Lb/i/c/u/o/c$a;

    iget-object v5, p0, Lb/i/c/u/o/a$b;->c:Ljava/lang/String;

    iget-object v6, p0, Lb/i/c/u/o/a$b;->d:Ljava/lang/String;

    iget-object v1, p0, Lb/i/c/u/o/a$b;->e:Ljava/lang/Long;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v1, p0, Lb/i/c/u/o/a$b;->f:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iget-object v11, p0, Lb/i/c/u/o/a$b;->g:Ljava/lang/String;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lb/i/c/u/o/a;-><init>(Ljava/lang/String;Lb/i/c/u/o/c$a;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Lb/i/c/u/o/a$a;)V

    return-object v0

    .line 10
    :cond_41
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing required properties:"

    invoke-static {v2, v0}, Lb/d/b/a/a;->w(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public b(Lb/i/c/u/o/c$a;)Lb/i/c/u/o/d$a;
    .locals 1

    const-string v0, "Null registrationStatus"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lb/i/c/u/o/a$b;->b:Lb/i/c/u/o/c$a;

    return-object p0
.end method

.method public c(J)Lb/i/c/u/o/d$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lb/i/c/u/o/a$b;->e:Ljava/lang/Long;

    return-object p0
.end method

.method public d(J)Lb/i/c/u/o/d$a;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lb/i/c/u/o/a$b;->f:Ljava/lang/Long;

    return-object p0
.end method
