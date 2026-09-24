.class public Lcom/google/android/material/timepicker/TimePickerView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final synthetic Q:I


# instance fields
.field public final I:Lcom/google/android/material/chip/Chip;

.field public final J:Lcom/google/android/material/chip/Chip;

.field public final K:Lcom/google/android/material/timepicker/ClockHandView;

.field public final L:Lcom/google/android/material/timepicker/ClockFaceView;

.field public final M:Lcom/google/android/material/button/MaterialButtonToggleGroup;

.field public N:Lm38;

.field public O:Lm38;

.field public P:Lj95;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 153
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/timepicker/TimePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Lx38;

    .line 5
    .line 6
    invoke-direct {p2, p0}, Lx38;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const p3, 0x7f0d00fe

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    const p1, 0x7f0a030c

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/material/timepicker/ClockFaceView;

    .line 27
    .line 28
    iput-object p1, p0, Lcom/google/android/material/timepicker/TimePickerView;->L:Lcom/google/android/material/timepicker/ClockFaceView;

    .line 29
    .line 30
    const p3, 0x7f0a0311

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    check-cast p3, Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 38
    .line 39
    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerView;->M:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 40
    .line 41
    new-instance v0, Lw38;

    .line 42
    .line 43
    invoke-direct {v0, p0}, Lw38;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 44
    .line 45
    .line 46
    iget-object p3, p3, Lcom/google/android/material/button/MaterialButtonToggleGroup;->M:Ljava/util/LinkedHashSet;

    .line 47
    .line 48
    invoke-virtual {p3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    const p3, 0x7f0a0316

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    check-cast p3, Lcom/google/android/material/chip/Chip;

    .line 59
    .line 60
    iput-object p3, p0, Lcom/google/android/material/timepicker/TimePickerView;->I:Lcom/google/android/material/chip/Chip;

    .line 61
    .line 62
    const v0, 0x7f0a0313

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/google/android/material/chip/Chip;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/google/android/material/timepicker/TimePickerView;->J:Lcom/google/android/material/chip/Chip;

    .line 72
    .line 73
    const v1, 0x7f0a030d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lcom/google/android/material/timepicker/ClockHandView;

    .line 81
    .line 82
    iput-object v1, p0, Lcom/google/android/material/timepicker/TimePickerView;->K:Lcom/google/android/material/timepicker/ClockHandView;

    .line 83
    .line 84
    new-instance v1, Llb;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Llb;-><init>(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p1, Lcom/google/android/material/timepicker/ClockFaceView;->d0:Llb;

    .line 90
    .line 91
    new-instance p1, Landroid/view/GestureDetector;

    .line 92
    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    new-instance v2, Ly38;

    .line 98
    .line 99
    invoke-direct {v2, p0}, Ly38;-><init>(Lcom/google/android/material/timepicker/TimePickerView;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 103
    .line 104
    .line 105
    new-instance p0, Lz38;

    .line 106
    .line 107
    invoke-direct {p0, p1}, Lz38;-><init>(Landroid/view/GestureDetector;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 114
    .line 115
    .line 116
    const/16 p0, 0xc

    .line 117
    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p0

    .line 122
    const p1, 0x7f0a0446

    .line 123
    .line 124
    .line 125
    invoke-virtual {p3, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    const/16 p0, 0xa

    .line 129
    .line 130
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    invoke-virtual {v0, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    .line 142
    .line 143
    const-string p0, "android.view.View"

    .line 144
    .line 145
    invoke-virtual {p3, p0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, p0}, Lcom/google/android/material/chip/Chip;->setAccessibilityClassName(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method


# virtual methods
.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    if-ne p1, p0, :cond_0

    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    iget-object p0, p0, Lcom/google/android/material/timepicker/TimePickerView;->J:Lcom/google/android/material/chip/Chip;

    .line 9
    .line 10
    const/16 p1, 0x8

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
