/*
 * Copyright 2020 ZUP IT SERVICOS EM TECNOLOGIA E INOVACAO SA
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

public struct PageView: RawComponent, AutoInitiableAndDecodable, HasContext {

    public let children: [RawComponent]
    public let context: Context?
    public let onPageChange: RawAction?
    public let currentPage: Expression<Int>?

// sourcery:inline:auto:PageView.Init
    public init(
        children: [RawComponent],
        context: Context? = nil,
        onPageChange: RawAction? = nil,
        currentPage: Expression<Int>? = nil
    ) {
        self.children = children
        self.context = context
        self.onPageChange = onPageChange
        self.currentPage = currentPage
    }
// sourcery:end
}

public protocol PageIndicatorComponent: RawComponent {}
