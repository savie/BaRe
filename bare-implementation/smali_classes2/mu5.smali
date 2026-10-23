.class public final Lmu5;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lwb8;


# instance fields
.field public final a:Lwb8;


# direct methods
.method public constructor <init>(Lwb8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lmu5;->a:Lwb8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->isNull(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lmu5;->a:Lwb8;

    .line 16
    .line 17
    invoke-interface {p0, p1, p2}, Lwb8;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 23
    return-object p0
.end method

.method public final b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    iget-object p0, p0, Lmu5;->a:Lwb8;

    .line 4
    .line 5
    invoke-interface {p0, p1, p2, p3}, Lwb8;->b(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
