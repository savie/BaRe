package com.bareapps.barebackup.home

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.bareapps.barebackup.R

class HomeTabFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?
    ): View {
        val layoutId = requireArguments().getInt(ARG_LAYOUT)
        return inflater.inflate(layoutId, container, false)
    }

    companion object {
        private const val ARG_LAYOUT = "layout_id"
        fun newInstance(layoutId: Int) = HomeTabFragment().apply {
            arguments = Bundle().apply { putInt(ARG_LAYOUT, layoutId) }
        }
    }
}
