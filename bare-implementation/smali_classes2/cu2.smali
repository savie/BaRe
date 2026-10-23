.class public final Lcu2;
.super Lf63;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final b:Luh6;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;Luh6;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lf63;-><init>(Ljava/lang/reflect/Field;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcu2;->b:Luh6;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcu2;->b:Luh6;

    .line 2
    .line 3
    iget-object p0, p0, Luh6;->d:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final b()[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcu2;->b:Luh6;

    .line 2
    .line 3
    iget-object p0, p0, Luh6;->e:[Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, [Ljava/lang/String;

    .line 10
    .line 11
    return-object p0
.end method

.method public final c(Landroid/content/ContentValues;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcu2;->b:Luh6;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Luh6;->c(Landroid/content/ContentValues;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d(Landroid/database/Cursor;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcu2;->b:Luh6;

    .line 2
    .line 3
    invoke-virtual {v0}, Luh6;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1}, Luh6;->b(Landroid/database/Cursor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lf63;->a:Ljava/lang/reflect/Field;

    .line 11
    .line 12
    invoke-virtual {p0, p2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
