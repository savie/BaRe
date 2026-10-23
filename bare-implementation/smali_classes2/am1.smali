.class public final Lam1;
.super Lf63;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final g:[Ljava/lang/String;


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/String;

.field public final d:Lwb8;

.field public final e:Z

.field public final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    sput-object v0, Lam1;->g:[Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Field;Lwb8;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf63;-><init>(Ljava/lang/reflect/Field;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lam1;->d:Lwb8;

    .line 5
    .line 6
    const-class p2, Lzl1;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lzl1;

    .line 13
    .line 14
    invoke-interface {p1}, Lzl1;->value()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lam1;->b:Ljava/lang/String;

    .line 19
    .line 20
    filled-new-array {p2}, [Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    iput-object p2, p0, Lam1;->c:[Ljava/lang/String;

    .line 25
    .line 26
    invoke-interface {p1}, Lzl1;->treatNullAsDefault()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    iput-boolean p2, p0, Lam1;->e:Z

    .line 31
    .line 32
    invoke-interface {p1}, Lzl1;->readonly()Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput-boolean p1, p0, Lam1;->f:Z

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lam1;->c:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lam1;->f:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lam1;->g:[Ljava/lang/String;

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    iget-object p0, p0, Lam1;->c:[Ljava/lang/String;

    .line 9
    .line 10
    return-object p0
.end method

.method public final c(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lam1;->f:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lam1;->e:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lam1;->d:Lwb8;

    .line 13
    .line 14
    iget-object p0, p0, Lam1;->b:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, p1, p0, p2}, Lwb8;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method

.method public final d(Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lam1;->d:Lwb8;

    .line 2
    .line 3
    iget-object v1, p0, Lam1;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lwb8;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p0, p0, Lf63;->a:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
