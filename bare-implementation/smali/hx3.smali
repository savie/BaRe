.class public final Lhx3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ll98;


# instance fields
.field public final b:Ll98;


# direct methods
.method public constructor <init>(Ll98;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Argument must not be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lms8;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lhx3;->b:Ll98;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lll6;II)Lll6;
    .locals 4

    .line 1
    invoke-interface {p2}, Lll6;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lfx3;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bumptech/glide/a;->a(Landroid/content/Context;)Lcom/bumptech/glide/a;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/a;->a:Lnr0;

    .line 12
    .line 13
    iget-object v2, v0, Lfx3;->a:Lex3;

    .line 14
    .line 15
    iget-object v2, v2, Lex3;->a:Llx3;

    .line 16
    .line 17
    iget-object v2, v2, Llx3;->l:Landroid/graphics/Bitmap;

    .line 18
    .line 19
    new-instance v3, Lor0;

    .line 20
    .line 21
    invoke-direct {v3, v1, v2}, Lor0;-><init>(Lnr0;Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lhx3;->b:Ll98;

    .line 25
    .line 26
    invoke-interface {p0, p1, v3, p3, p4}, Ll98;->a(Landroid/content/Context;Lll6;II)Lll6;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eq v3, p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {v3}, Lor0;->b()V

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-interface {p1}, Lll6;->get()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/graphics/Bitmap;

    .line 40
    .line 41
    iget-object p3, v0, Lfx3;->a:Lex3;

    .line 42
    .line 43
    iget-object p3, p3, Lex3;->a:Llx3;

    .line 44
    .line 45
    invoke-virtual {p3, p0, p1}, Llx3;->c(Ll98;Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    return-object p2
.end method

.method public final b(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lhx3;->b:Ll98;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljo4;->b(Ljava/security/MessageDigest;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lhx3;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lhx3;

    .line 6
    .line 7
    iget-object p0, p0, Lhx3;->b:Ll98;

    .line 8
    .line 9
    iget-object p1, p1, Lhx3;->b:Ll98;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Lhx3;->b:Ll98;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method
